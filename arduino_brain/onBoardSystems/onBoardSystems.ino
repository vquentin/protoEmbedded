/*
 * Author: Quentin Van Overmeere, YodaCity SRL
 * E-mail: quentin@yoda-city.com
 * Copyright YodaCity 2020
 * Controls the Arduino Uno R3 Board that is hooked up to OLED screen, horn, lamps and other on-board controls
 */

#include "EdgeDebounceLite.h" // j-bellavance debounce function under GNU license


EdgeDebounceLite debounce ;

// input assignments
int input_horn = 7 ; // pulls low when button is pressed

// output assignments
int output_horn = 11; // connected to npn transistor

// horn state machine declarations
enum State_enum_horn {OFF_HORN, ON_HORN};
enum Sensors_enum_horn {NONE_HORN, PUSH_BUTTON_HORN};

void state_machine_run_horn(uint8_t sensors_horn);
void off_horn() ;
void on_horn() ;
uint8_t read_button_horn();

uint8_t state_horn = OFF_HORN ;

void setup() {
  pinMode(input_horn, INPUT);
  pinMode(output_horn, OUTPUT);
}

void loop() {
  state_machine_run_horn(read_button_horn());
  delay(10);
}

// horn state machine implementation
void state_machine_run_horn(uint8_t sensors_horn){
  switch(state_horn){
    case OFF_HORN:
      if(sensors_horn != NONE_HORN){
        on_horn();
        state_horn = ON_HORN ;
      }
      break;
    case ON_HORN:
      if(sensors_horn != ON_HORN){
        off_horn();
        state_horn = OFF_HORN ;
      }
      break;
  }
}

void on_horn(){
  digitalWrite(output_horn, HIGH);
}
void off_horn(){
  digitalWrite(output_horn, LOW);
}

uint8_t read_button_horn(){
  return debounce.pin(input_horn); // or PUSH_BUTTON_HORN
}
