/*
 * Author: Quentin Van Overmeere, YodaCity SRL
 * E-mail: quentin@yoda-city.com
 * Copyright YodaCity 2020
 * Controls the Arduino Uno R3 Board that is hooked up to OLED screen, horn, lamps and other on-board controls
 */

#include "EdgeDebounceLite.h" // j-bellavance debounce function under GNU license

#include "musics.h" //file including the different melodies
#include "utils.h" // file including utility functions

EdgeDebounceLite debounce ;

// input assignments
int input_horn = 7 ; // pulls low when button is pressed
int input_light = 6 ; // pulls low when button is pressed

// output assignments
int output_horn = 11; // connected to npn transistor HIGH is ON
int output_light = 12 ; // connected to npn transistor HIGH is ON

// horn state machine declarations
enum State_enum_horn {OFF_HORN, ON_HORN};
enum Sensors_enum_horn {PUSH_BUTTON_HORN,NO_PUSH_BUTTON_HORN};

void state_machine_run_horn(uint8_t sensors_horn);
void off_horn() ;
void on_horn() ;
uint8_t read_button_horn();
uint8_t state_horn = OFF_HORN ;

// light state machine declarations
enum State_enum_light {OFF_LIGHT, ON_LIGHT};
enum Sensors_enum_light {PUSH_BUTTON_LIGHT,NO_PUSH_BUTTON_LIGHT};

void state_machine_run_light(uint8_t sensors_light);
void off_light() ;
void on_light() ;
uint8_t read_button_light();
uint8_t state_light = OFF_LIGHT ;

void setup() {
  pinMode(input_horn, INPUT);
  pinMode(output_horn, OUTPUT);
  pinMode(input_light, INPUT);
  pinMode(output_light, OUTPUT);
  
}

void loop() {
  state_machine_run_horn(read_button_horn());
  state_machine_run_light(read_button_light());
  
  delay(10);
}

// horn state machine implementation
void state_machine_run_horn(uint8_t sensors_horn){
  switch(state_horn){
    case OFF_HORN:
      if(sensors_horn != NO_PUSH_BUTTON_HORN){
        on_horn();
        state_horn = ON_HORN ;
      }
      break;
    case ON_HORN:
      if(sensors_horn != PUSH_BUTTON_HORN){
        off_horn();
        state_horn = OFF_HORN ;
      }
      break;
  }
}

void on_horn(){
  //digitalWrite(output_horn, HIGH);
  analogWrite(output_horn, 100); // provides a lower tone (Freq is 490 Hz)
  //playNotes(melodyFinish,melodyFinishLength,output_horn); // plays a little song (PWM is @ 50 %).
  
}
void off_horn(){
  digitalWrite(output_horn, LOW);
}

uint8_t read_button_horn(){
  return debounce.pin(input_horn); // or PUSH_BUTTON_HORN
}


// light state machine implementation
void state_machine_run_light(uint8_t sensors_light){
  switch(state_light){
    case OFF_LIGHT:
      if(sensors_light != NO_PUSH_BUTTON_LIGHT){
        on_light();
        state_light = ON_LIGHT ;
      }
      break;
    case ON_LIGHT:
      if(sensors_light != PUSH_BUTTON_LIGHT){
        off_light();
        state_light = OFF_LIGHT ;
      }
      break;
  }
}

void on_light(){
  digitalWrite(output_light, HIGH);
  
}
void off_light(){
  digitalWrite(output_light, LOW);
}

uint8_t read_button_light(){
  return debounce.pin(input_light); // or PUSH_BUTTON_LIGHT
}
