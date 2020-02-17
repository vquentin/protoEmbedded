/*
   Author: Quentin Van Overmeere, YodaCity SRL
   E-mail: quentin@yoda-city.com
   Copyright YodaCity 2020
   Controls the Arduino Uno R3 Board that is hooked up to OLED screen, horn, lamps and other on-board controls
*/

#include "configuration.h" // the file containing all configuration variables
#include "EdgeDebounceLite.h" // j-bellavance debounce function under GNU license
#include "musics.h" //file including the different melodies
#include "utils.h" // file including utility functions

#include <EEPROM.h> // to manage hard-coded variables like wheel diameter, odometer etc.

EdgeDebounceLite debounce ;

// alarm state machine declarations
enum alarm_states_t {ALARM_INACTIVE, ALARM_ACTIVE, ALARM_WATCH};

// brake state machine declarations
enum state_brake_t {BRAKE_OFF, BRAKE_ON};
enum buttons_brake_t {BRAKE_LEVER_ON,BRAKE_LEVER_OFF};
void state_machine_brake();
// actions
void off_brakeLight();
void on_brakeLight();
// readings
buttons_brake_t read_buttons_brake();

// eco mode state machine declarations
enum state_ecoMode_t {ECO_OFF, ECO_ON};
enum buttons_ecoMode_t {ECO_MODE_ON, ECO_MODE_OFF};
void state_machine_ecoMode();
//actions
void off_ecoMode();
void on_ecoMode();
// readings
buttons_ecoMode_t read_buttons_ecoMode();

// horn state machine declarations
enum state_horn_t {HORN_OFF, HORN_ON, HORN_SOFT, HORN_ALARM};
enum buttons_horn_t {HORN_PUSH_MAIN, HORN_PUSH_SOFT, HORN_NO_PUSH};
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
alarm_states_t state_alarm = ALARM_INACTIVE;
//alarm_states_t state_alarm = ALARM_ACTIVE; //uncomment this for testing the alarm function without implementation
state_brake_t state_brake = BRAKE_OFF ; // brake FSM initialization
state_ecoMode_t state_ecoMode = ECO_OFF ; // eco-mode FSM initialization
state_horn_t state_horn = HORN_OFF ; // horn FSM initialization

void setup() {
  pinMode(INPUT_HORN_PIN, INPUT);
  pinMode(INPUT_SOFT_HORN_PIN, INPUT);
  pinMode(INPUT_BRAKE_PIN, INPUT);
  pinMode(INPUT_ECO_PIN, INPUT);

  pinMode(OUTPUT_HORN_PIN, OUTPUT);
  pinMode(OUTPUT_BRAKE_PIN, OUTPUT);
  pinMode(OUTPUT_ECO_PIN, OUTPUT);

  // hard-coded variables in EEPROM
  // wheel diameter
  // shunt resistor value
  // odometer reading
  
}

void loop() {
  state_machine_horn();
  state_machine_brake();
  state_machine_eco();
  delay(10);
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

// buttons are active only if the Yoda can be active
buttons_horn_t read_buttons_horn() {
  if (ALARM_INACTIVE && debounce.pin(INPUT_HORN_PIN) == LOW) {
    return HORN_PUSH_MAIN ;
  }
  else if (ALARM_INACTIVE && debounce.pin(INPUT_SOFT_HORN_PIN) == LOW) {
    return HORN_PUSH_SOFT ;
  }
    return HORN_NO_PUSH;
}

// buttons are active only if the Yoda can be active
buttons_brake_t read_buttons_brake() {
  if (ALARM_INACTIVE && debounce.pin(INPUT_BRAKE_PIN) == LOW ) {
    return BRAKE_LEVER_ON ;
  }
  return BRAKE_LEVER_OFF;
}

// buttons are active only if the Yoda can be active
buttons_ecoMode_t read_buttons_ecoMode() {
  if (ALARM_INACTIVE && debounce.pin(INPUT_ECO_PIN) == LOW ) {
    return ECO_MODE_ON ;
  }
  return ECO_MODE_OFF;
}

/*
  // light state machine implementation
  void state_machine_run_light(uint8_t sensors_light) {
  switch (state_light) {
    case OFF_LIGHT:
      if (sensors_light != NO_PUSH_BUTTON_LIGHT) {
        on_light();
        state_light = ON_LIGHT ;
      }
      break;
    case ON_LIGHT:
      if (sensors_light != PUSH_BUTTON_LIGHT) {
        off_light();
        state_light = OFF_LIGHT ;
      }
      break;
  }
  }

  void on_light() {
  digitalWrite(output_light, HIGH);

  }
  void off_light() {
  digitalWrite(output_light, LOW);
  }

  uint8_t read_button_light() {
  return debounce.pin(input_light); // or PUSH_BUTTON_LIGHT
  }
*/
