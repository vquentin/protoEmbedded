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

EdgeDebounceLite debounce ;

// alarm state machine declarations
enum alarm_states_t {ALARM_INACTIVE, ALARM_ACTIVE};
alarm_states_t state_alarm = ALARM_INACTIVE;

// horn state machine declarations
enum state_enum_horn_t {HORN_OFF, HORN_ON, HORN_SOFT, HORN_ALARM};
enum buttons_enum_horn_t {HORN_PUSH_MAIN, HORN_PUSH_SOFT, HORN_NO_PUSH};
unsigned long time_start_soft_horn = 0 ;

void state_machine_horn();
// actions
void off_horn() ;
void on_horn() ;
void alarm_horn(unsigned long milliseconds_current) ;
bool soft_horn(unsigned long milliseconds_start,unsigned long milliseconds_current);
// readings
buttons_enum_horn_t read_buttons_horn();



state_enum_horn_t state_horn = HORN_OFF ; // horn FSM initialization


/*
  // light state machine declarations
  enum State_enum_light {OFF_LIGHT, ON_LIGHT};
  enum Sensors_enum_light {PUSH_BUTTON_LIGHT,NO_PUSH_BUTTON_LIGHT};

  void state_machine_run_light(uint8_t sensors_light);
  void off_light() ;
  void on_light() ;
  uint8_t read_button_light();
  uint8_t state_light = OFF_LIGHT ;
*/

void setup() {
  pinMode(INPUT_HORN_PIN, INPUT);
  pinMode(INPUT_SOFT_HORN_PIN, INPUT);
  pinMode(INPUT_BRAKE_PIN, INPUT);

  pinMode(OUTPUT_HORN_PIN, OUTPUT);
  pinMode(OUTPUT_BRAKE_PIN, OUTPUT);
}

void loop() {
  state_machine_horn();

  //state_machine_run_light(read_button_light());

  delay(10);
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
      if (state_alarm == ALARM_INACTIVE) {
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
  //analogWrite(output_horn, 100); // provides a lower tone (Freq is 490 Hz)
  //playNotes(melodyFinish,melodyFinishLength,output_horn); // plays a little song (PWM is @ 50 %).
}
void off_horn() {
  noTone(OUTPUT_HORN_PIN);
  digitalWrite(OUTPUT_HORN_PIN, LOW);
}

// plays a tune going up and down (police siren)
void alarm_horn(unsigned long milliseconds_start) {
  unsigned long t = (millis()-milliseconds_start) % (2*ALARM_CYCLE_TIME);
  if(t<=ALARM_CYCLE_TIME){
    tone(OUTPUT_HORN_PIN,ALARM_START_TONE+(ALARM_END_TONE-ALARM_START_TONE)/ALARM_CYCLE_TIME*t,50);
  }
  else tone(OUTPUT_HORN_PIN,ALARM_START_TONE-(ALARM_END_TONE-ALARM_START_TONE)/ALARM_CYCLE_TIME*(t-ALARM_CYCLE_TIME),50);
}

// melodySoftTimed[i][0] = freq in Hz, melodySoftTimed[i][1] = start time in ms, melodySoftTimed[i][2] = stop time in ms
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


/*
   Function read_buttons_horn()
   returns either HORN_PUSH_MAIN, HORN_PUSH_SOFT, HORN_NO_PUSH
*/
buttons_enum_horn_t read_buttons_horn() {
  if (debounce.pin(INPUT_HORN_PIN) == LOW) {
    return HORN_PUSH_MAIN ;
  }
  else if (debounce.pin(INPUT_SOFT_HORN_PIN) == LOW) {
    return HORN_PUSH_SOFT ;
  }
    return HORN_NO_PUSH;
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
