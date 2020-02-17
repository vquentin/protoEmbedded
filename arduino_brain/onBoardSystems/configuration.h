/*
 * Author: Quentin Van Overmeere, YodaCity SRL
 * E-mail: quentin@yoda-city.com
 * Copyright YodaCity 2020
 * Configuration file for the Yoda prototype
 */

//#define DEBUG

 // input assignments. All pull low when buttons are pressed
#define INPUT_HORN_PIN  2
#define INPUT_SOFT_HORN_PIN 5
#define INPUT_BRAKE_PIN 12

// output assignments
#define OUTPUT_HORN_PIN 3 // connected to npn transistor HIGH is ON
#define OUTPUT_BRAKE_PIN 6 // connected to npn transistor HIGH is ON

// alarm tune for horn (police siren)
#define ALARM_CYCLE_TIME 2800 // cycle time for upward pitch to downward pitch in ms
#define ALARM_START_TONE 400 // starting frequency in Hz
#define ALARM_END_TONE 1000 // end frequency in Hz