/*
   Author: Quentin Van Overmeere, YodaCity SRL
   E-mail: quentin@yoda-city.com
   Copyright YodaCity 2020
   Controls the Slave Arduino Uno R3 Board that is hooked up to OLED screen, horn, lamps and other on-board controls
   The Master Arduino Uno R3 has the connections to BLE, SIM card and on/off control
*/

#include "configuration.h" // the file containing all configuration variables
#include "EdgeDebounceLite.h" // j-bellavance debounce function under GNU license
#include "musics.h" //file including the different melodies
#include "utils.h" // file including utility functions
#include "sharedI2CMsg.h" // declarations shared between two Arduinos, master and slave
#include "enums.h" // declaration of additional enum types - placed here to avoid bugs
#include "displayOLED.h" // functions to manage the OLED display dashboard

#include <EEPROM.h> // to manage hard-coded variables like wheel diameter, odometer etc.
#include <Wire.h> // to receive data from master on the I2C bus: speed, alarm state, trip distance, odometer distance

EdgeDebounceLite debounce ;

// brake state machine declarations
void state_machine_brake();
// actions
void off_brakeLight();
void on_brakeLight();
// readings
buttons_brake_t read_buttons_brake();

// eco mode state machine declarations
void state_machine_ecoMode();
//actions
void off_ecoMode();
void on_ecoMode();
// readings
buttons_ecoMode_t read_buttons_ecoMode();

// indicators state machine declarations
unsigned long time_start_ind = 0 ;
void state_machine_ind();
//actions
void off_ind();
void on_left_ind(unsigned long milliseconds_start, unsigned long milliseconds_current);
void on_right_ind(unsigned long milliseconds_start, unsigned long milliseconds_current);
void on_left_right_ind(unsigned long milliseconds_start, unsigned long milliseconds_current);
//readings
buttons_ind_t read_buttons_ind();

// horn state machine declarations
unsigned long time_start_soft_horn = 0 ;

void state_machine_horn();
// actions
void off_horn() ;
void on_horn() ;
void alarm_horn(unsigned long milliseconds_current) ;
bool soft_horn(unsigned long milliseconds_start,unsigned long milliseconds_current);
// readings
buttons_horn_t read_buttons_horn();

// initialization of FSMs
//alarm_states_t state_alarm = ALARM_WATCH;
alarm_states_t state_alarm = ALARM_INACTIVE;
//alarm_states_t state_alarm = ALARM_ACTIVE; //uncomment this for testing the alarm function without implementation
state_brake_t state_brake = BRAKE_OFF ; // brake FSM initialization
state_ecoMode_t state_ecoMode = ECO_OFF ; // eco-mode FSM initialization
state_ind_t state_ind = IND_OFF ; // indicators FSM initialization
state_horn_t state_horn = HORN_OFF ; // horn FSM initialization

void setup() {
  pinMode(INPUT_HORN_PIN, INPUT);
  pinMode(INPUT_SOFT_HORN_PIN, INPUT);
  pinMode(INPUT_BRAKE_PIN, INPUT);
  pinMode(INPUT_ECO_PIN, INPUT);
  pinMode(INPUT_IND_LEFT_PIN, INPUT);
  pinMode(INPUT_IND_RIGHT_PIN, INPUT);

  pinMode(OUTPUT_HORN_PIN, OUTPUT);
  pinMode(OUTPUT_BRAKE_PIN, OUTPUT);
  pinMode(OUTPUT_ECO_PIN, OUTPUT);
  pinMode(OUTPUT_IND_LEFT_PIN, OUTPUT);
  pinMode(OUTPUT_IND_RIGHT_PIN, OUTPUT);

  Wire.begin(SLAVE_I2C_ADDRESS); 
  Wire.onReceive(receiveI2CHandler); // register event handler
  // hard-coded variables in EEPROM
  // shunt resistor value
  // odometer/trip/speed/battery readings? assumes the arduino will not be on when riding?

  // OLED display init
  display.setRotation(2); // to accomodate our enclosure
  display.begin(); // init of display
  display.display(); // show splashscreen
  delay(150);
  display.clearDisplay();   // clears the screen and buffer
  display.display();
  
}

void loop() {
  state_machine_horn();
  state_machine_brake();
  state_machine_eco();
  state_machine_ind();
  update_display(speedR,odoR,tripR,batteryChargeR,batteryKmR,state_alarm,state_ecoMode);
  delay(10);
}

//I2C event handler
void receiveI2CHandler(int numBytes){
  i2c_messages_t msg_i2c = Wire.read(); // receive byte as a i2c_messages_t type (cast OK since less than 255 values)
  switch(msg_i2c){
    case I2C_SPEED:
      if(numBytes-1 == sizeof(speedR)){
        speedR = Wire.read();    // receive byte as a uint8_t
      }
      break;
    case I2C_ALARM:
      state_alarm = Wire.read(); // receive byte as a alarm_states_t type (cast OK since less than 255 values)
      break;
    case I2C_ODO:
      if (numBytes-1 == sizeof(odoR)){
        Wire.readBytes((byte*)&odoR,sizeof(odoR)); // receive byte as a unsigned long
      }
      break;
    case I2C_TRIP:
      if(numBytes-1 == sizeof(tripR)){
        Wire.readBytes((byte*)&tripR,sizeof(tripR));    // receive byte as a uint16_t - TODO: bit-wise ops
      }
      break;
    case I2C_BATTERY_CHARGE:
      if(numBytes-1 == sizeof(batteryChargeR)){
        batteryChargeR = Wire.read();    // receive byte as a uint8_t
      }
      break;
    case I2C_BATTERY_KM:
      if(numBytes-1 == sizeof(batteryKmR)){
        batteryKmR = Wire.read();    // receive byte as a uint8_t
      }
      break;
  }
}

// brake state machine implementation
void state_machine_brake(){
  switch (state_brake){
    case BRAKE_OFF:
      if (read_buttons_brake() != BRAKE_LEVER_OFF) {
        on_brakeLight();
        state_brake = BRAKE_ON ;
      }
      break;
    case BRAKE_ON:
      if (read_buttons_brake() != BRAKE_LEVER_ON) {
        off_brakeLight();
        state_brake = BRAKE_OFF ;
      }
      break;
  }
}

// eco mode state machine implementation
void state_machine_eco(){
  switch(state_ecoMode){
    case ECO_OFF:
      if(read_buttons_ecoMode() != ECO_MODE_OFF){
        on_ecoMode();
        state_ecoMode = ECO_ON ;
      }
      break;
    case ECO_ON:
      if(read_buttons_ecoMode() != ECO_MODE_ON){
        off_ecoMode();
        state_ecoMode = ECO_OFF ;
      }
      break;
  }
}

// indicators state machine implementation
void state_machine_ind() {
  switch (state_ind) {
    case IND_OFF:
      switch (read_buttons_ind()) {
        case IND_LEFT_ON:
          time_start_ind = millis();
          on_left_ind(time_start_ind,millis());
          state_ind = L_IND_ON ;
          break;
        case IND_RIGHT_ON:
          time_start_ind = millis();
          on_right_ind(time_start_ind,millis());
          state_ind = R_IND_ON ;
          break;
        case IND_LEFT_RIGHT_OFF:
          if(state_alarm==ALARM_ACTIVE){
            time_start_ind = millis();
            on_left_right_ind(time_start_ind,millis());
            state_ind = L_R_IND_ON ;
          }
          break;
      }
      break;
    case L_IND_ON:
      if (read_buttons_ind() != IND_LEFT_ON) {
        off_ind();
        state_ind = IND_OFF ;
      }
      else{
        on_left_ind(time_start_ind,millis());
      }
      break;
    case R_IND_ON:
      if (read_buttons_ind() != IND_RIGHT_ON) {
        off_ind();
        state_ind = IND_OFF ;
      }
      else{
        on_right_ind(time_start_ind,millis());
      }
      break;
    case L_R_IND_ON:
      if (state_alarm != ALARM_ACTIVE) {
        off_ind();
        state_ind = IND_OFF ;
      }
      else{
        on_left_right_ind(time_start_ind,millis()) ;
      }
      break;
  }
}

// horn state machine implementation
void state_machine_horn() {
  switch (state_horn) {
    case HORN_OFF:
      switch (read_buttons_horn()) {
        case HORN_PUSH_MAIN:
          on_horn();
          state_horn = HORN_ON ;
          break;
        case HORN_PUSH_SOFT:
          time_start_soft_horn = millis();
          soft_horn(time_start_soft_horn,millis());
          state_horn = HORN_SOFT ;
          break;
        case HORN_NO_PUSH:
          if(state_alarm==ALARM_ACTIVE){
            alarm_horn(millis());
            state_horn = HORN_ALARM ;
          }
          break;
      }
      break;
    case HORN_ON:
      if (read_buttons_horn() != HORN_PUSH_MAIN) {
        off_horn();
        state_horn = HORN_OFF ;
      }
      break;
    case HORN_SOFT:
      if(read_buttons_horn() == HORN_PUSH_MAIN){
          on_horn();
          state_horn = HORN_ON ;
      }
      else if(!soft_horn(time_start_soft_horn,millis())){
        off_horn();
        state_horn = HORN_OFF ;
      }
      break;
    case HORN_ALARM:
      if (state_alarm != ALARM_ACTIVE) {
        off_horn();
        state_horn = HORN_OFF ;
      }
      else{
        alarm_horn(millis()) ;
      }
      break;
  }
}

void on_horn() {
  noTone(OUTPUT_HORN_PIN);
  digitalWrite(OUTPUT_HORN_PIN, HIGH);
}
void off_horn() {
  noTone(OUTPUT_HORN_PIN);
  digitalWrite(OUTPUT_HORN_PIN, LOW);
}

// plays a tune going up and down (police siren)
void alarm_horn(unsigned long milliseconds_current) {
  unsigned long t = (milliseconds_current) % (2*ALARM_CYCLE_TIME);
  if(t<=ALARM_CYCLE_TIME){
    tone(OUTPUT_HORN_PIN,ALARM_START_TONE+(ALARM_END_TONE-ALARM_START_TONE)*t/ALARM_CYCLE_TIME,50);
  }
  else {
    tone(OUTPUT_HORN_PIN,ALARM_END_TONE-(ALARM_END_TONE-ALARM_START_TONE)*(t-ALARM_CYCLE_TIME)/ALARM_CYCLE_TIME,50);
  }
}

bool soft_horn(unsigned long milliseconds_start,unsigned long milliseconds_current) {
  unsigned long t = milliseconds_current-milliseconds_start ;
  if(t>melodySoftTimed[melodySoftLength-1][2]){
    noTone(OUTPUT_HORN_PIN);
    return false;
  }
  for(unsigned int i=0; i<melodySoftLength;i++){
    if(t > melodySoftTimed[i][1] && t<melodySoftTimed[i][2]){
      tone(OUTPUT_HORN_PIN,melodySoftTimed[i][0],melodySoftTimed[i][2]-t); // this is probably leading to multiple unnecessary calls to tone(...)
    }
  }
  return true;
}

void on_brakeLight() {
  digitalWrite(OUTPUT_BRAKE_PIN, HIGH);
}
void off_brakeLight() {
  digitalWrite(OUTPUT_BRAKE_PIN, LOW);
}

void on_ecoMode() {
  digitalWrite(OUTPUT_ECO_PIN, HIGH);
}
void off_ecoMode() {
  digitalWrite(OUTPUT_ECO_PIN, LOW);
}

void off_ind() {
  digitalWrite(OUTPUT_IND_LEFT_PIN,LOW);
  digitalWrite(OUTPUT_IND_RIGHT_PIN,LOW);
}

void on_left_ind(unsigned long milliseconds_start,unsigned long milliseconds_current) {
  if((milliseconds_current-milliseconds_start)%INDICATOR_CYCLE_TIME < INDICATOR_CYCLE_TIME_ON){
    digitalWrite(OUTPUT_IND_LEFT_PIN,HIGH);
  }
  else{
    digitalWrite(OUTPUT_IND_LEFT_PIN,LOW);
  }
}

void on_right_ind(unsigned long milliseconds_start,unsigned long milliseconds_current) {
  if((milliseconds_current-milliseconds_start)%INDICATOR_CYCLE_TIME < INDICATOR_CYCLE_TIME_ON){
    digitalWrite(OUTPUT_IND_RIGHT_PIN,HIGH);
  }
  else{
    digitalWrite(OUTPUT_IND_RIGHT_PIN,LOW);
  }
}

void on_left_right_ind(unsigned long milliseconds_start,unsigned long milliseconds_current) {
  if((milliseconds_current-milliseconds_start)%INDICATOR_CYCLE_TIME < INDICATOR_CYCLE_TIME_ON){
    digitalWrite(OUTPUT_IND_LEFT_PIN,HIGH);
    digitalWrite(OUTPUT_IND_RIGHT_PIN,HIGH);
  }
  else{
    digitalWrite(OUTPUT_IND_LEFT_PIN,LOW);
    digitalWrite(OUTPUT_IND_RIGHT_PIN,LOW);
  }
}

// buttons are active only if the Yoda can be active
buttons_horn_t read_buttons_horn() {
  if (state_alarm==ALARM_INACTIVE && debounce.pin(INPUT_HORN_PIN) == LOW) {
    return HORN_PUSH_MAIN ;
  }
  else if (ALARM_INACTIVE && debounce.pin(INPUT_SOFT_HORN_PIN) == LOW) {
    return HORN_PUSH_SOFT ;
  }
    return HORN_NO_PUSH;
}

// buttons are active only if the Yoda can be active
buttons_brake_t read_buttons_brake() {
  if (state_alarm==ALARM_INACTIVE && debounce.pin(INPUT_BRAKE_PIN) == LOW ) {
    return BRAKE_LEVER_ON ;
  }
  return BRAKE_LEVER_OFF;
}

// buttons are active only if the Yoda can be active
buttons_ecoMode_t read_buttons_ecoMode() {
  if (state_alarm==ALARM_INACTIVE && debounce.pin(INPUT_ECO_PIN) == LOW ) {
    return ECO_MODE_ON ;
  }
  return ECO_MODE_OFF;
}

// buttons are active only if the Yoda can be active
buttons_ind_t read_buttons_ind() {
  if (state_alarm==ALARM_INACTIVE && debounce.pin(INPUT_IND_LEFT_PIN) == LOW ) {
    return IND_LEFT_ON ;
  }
  else if(state_alarm==ALARM_INACTIVE && debounce.pin(INPUT_IND_RIGHT_PIN) == LOW ) {
    return IND_RIGHT_ON ;
  }
  return IND_LEFT_RIGHT_OFF;
}
