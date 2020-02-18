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
#define INPUT_BRAKE_PIN A1
#define INPUT_ECO_PIN 4
#define INPUT_IND_LEFT_PIN 0
#define INPUT_IND_RIGHT_PIN 1

// output assignments
#define OUTPUT_HORN_PIN 3 // connected to npn transistor HIGH is ON
#define OUTPUT_BRAKE_PIN 6 // connected to npn transistor HIGH is ON
#define OUTPUT_ECO_PIN 7 // connected to npn transistor HIGH is ON
#define OUTPUT_IND_LEFT_PIN A3 // connected to npn transistor HIGH is ON
#define OUTPUT_IND_RIGHT_PIN A2 // connected to npn transistor HIGH is ON

// OLED screen pin assignments
// Used for software SPI
#define OLED_CLK 13
#define OLED_MOSI 11
// Used for software or hardware SPI
#define OLED_CS 10
#define OLED_DC 8
// Used for I2C or SPI
#define OLED_RESET 9

// alarm tune for horn (police siren)
#define ALARM_CYCLE_TIME 2800 // cycle time for upward pitch to downward pitch in ms
#define ALARM_START_TONE 400 // starting frequency in Hz
#define ALARM_END_TONE 1000 // end frequency in Hz

// indicator flash timing
#define INDICATOR_CYCLE_TIME 750 // cycle time in ms
#define INDICATOR_CYCLE_TIME_ON 375 // on time of indicator
