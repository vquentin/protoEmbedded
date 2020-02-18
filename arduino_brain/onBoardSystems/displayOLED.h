/*********************************************************************
  This is a library for our Monochrome OLEDs based on SSD1305 drivers

  Pick one up today in the adafruit shop!
  ------> https://www.adafruit.com/products/2675

  These displays use SPI or I2C to communicate, 3-5 pins are required to
  interface

  Adafruit invests time and resources providing this open source code,
  please support Adafruit and open-source hardware by purchasing
  products from Adafruit!

  Written by Limor Fried/Ladyada  for Adafruit Industries.
  BSD license, check license.txt for more information
  All text above, and the splash screen below must be included in any redistribution
*********************************************************************/

#include <SPI.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1305.h>

// battery-drawing parameters
#define SCREEN_BATTERY_IND_HEIGHT 41
#define SCREEN_BATTERY_IND_WIDTH 20
#define SCREEN_BATTERY_IND_POS_X 100
#define SCREEN_BATTERY_IND_POS_Y 8
#define SCREEN_BATTERY_IND_CAP_HEIGHT 5
#define SCREEN_BATTERY_IND_CAP_WIDTH 10
#define SCREEN_BATTERY_IND_N 5 // number of rectangles to draw
#define SCREEN_BATTERY_IND_N_SPACE 2 // margin around the battery capacity indicators
#define SCREEN_BATTERY_IND_N_HEIGHT 6 // height of rectangle for capacity indication. Could be computed but worse for rounding errors

#define SCREEN_SPEED_X 20
#define SCREEN_SPEED_Y 6

#define SCREEN_ODO_X 10
#define SCREEN_ODO_Y 55

#define SCREEN_ECO_X 70
#define SCREEN_ECO_Y 8

#define SCREEN_ECO_SIZE 16
static const unsigned char PROGMEM logo16_eco_bmp[] =
{ B00000000, B11000000,
  B00000001, B11000000,
  B00000001, B11000000,
  B00000011, B11100000,
  B11110011, B11100000,
  B11111110, B11111000,
  B01111110, B11111111,
  B00110011, B10011111,
  B00011111, B11111100,
  B00001101, B01110000,
  B00011011, B10100000,
  B00111111, B11100000,
  B00111111, B11110000,
  B01111100, B11110000,
  B01110000, B01110000,
  B00000000, B00110000
};

// function definitions
void update_display(uint8_t speedR, unsigned long odoR, uint16_t tripR, uint8_t batteryChargeR, uint8_t batteryKmR, alarm_states_t state_alarm, state_ecoMode_t state_ecoMode);
void drawBattery(uint8_t c) ;
void drawSpeed(uint8_t s) ;
void drawOdometer(unsigned long d) ;
void drawTripMeter(uint16_t d) ;
void drawBatteryDist(uint8_t d) ;
void drawEcoSymbol(const uint8_t *bitmap, uint8_t w, uint8_t h);
void drawAlert() ;

// software SPI
Adafruit_SSD1305 display(OLED_MOSI, OLED_CLK, OLED_DC, OLED_RESET, OLED_CS);
// hardware SPI
//Adafruit_SSD1305 display(OLED_DC, OLED_RESET, OLED_CS);

// updates the display dashboard
void update_display(uint8_t speedR, unsigned long odoR, uint16_t tripR, uint8_t batteryChargeR, uint8_t batteryKmR, alarm_states_t state_alarm, state_ecoMode_t state_ecoMode) {
  display.clearDisplay();
  switch (state_alarm) {
    case ALARM_INACTIVE:
      if (state_ecoMode == ECO_ON) {
        drawEcoSymbol(logo16_eco_bmp, SCREEN_ECO_SIZE, SCREEN_ECO_SIZE);
      }
      drawBattery(batteryChargeR);
      drawSpeed(speedR);
      drawOdometer(odoR);
      drawTripMeter(tripR); // distance in hectometers
      drawBatteryDist(batteryKmR);
      break;
    case ALARM_ACTIVE:
      drawAlert();
      break;
  }
  display.display();;
}

/* draws the battery indicator on the display
    c is the remaining charge in percent
*/
void drawBattery(uint8_t c) {
  // display the outline of the battery indicator
  display.drawFastHLine(SCREEN_BATTERY_IND_POS_X, SCREEN_BATTERY_IND_POS_Y + SCREEN_BATTERY_IND_HEIGHT, SCREEN_BATTERY_IND_WIDTH + 1, WHITE); // bottom line
  display.drawFastVLine(SCREEN_BATTERY_IND_POS_X, SCREEN_BATTERY_IND_POS_Y, SCREEN_BATTERY_IND_HEIGHT, WHITE); // first main vertical line
  display.drawFastVLine(SCREEN_BATTERY_IND_POS_X + SCREEN_BATTERY_IND_WIDTH, SCREEN_BATTERY_IND_POS_Y, SCREEN_BATTERY_IND_HEIGHT, WHITE); // second main vertical line
  display.drawFastVLine(SCREEN_BATTERY_IND_POS_X + (SCREEN_BATTERY_IND_WIDTH - SCREEN_BATTERY_IND_CAP_WIDTH) / 2, SCREEN_BATTERY_IND_POS_Y - SCREEN_BATTERY_IND_CAP_HEIGHT, SCREEN_BATTERY_IND_CAP_HEIGHT + 1, WHITE); // cap
  display.drawFastVLine(SCREEN_BATTERY_IND_POS_X + (SCREEN_BATTERY_IND_WIDTH - SCREEN_BATTERY_IND_CAP_WIDTH) / 2 + SCREEN_BATTERY_IND_CAP_WIDTH, SCREEN_BATTERY_IND_POS_Y - SCREEN_BATTERY_IND_CAP_HEIGHT, SCREEN_BATTERY_IND_CAP_HEIGHT + 1, WHITE); // cap
  display.drawFastHLine(SCREEN_BATTERY_IND_POS_X + (SCREEN_BATTERY_IND_WIDTH - SCREEN_BATTERY_IND_CAP_WIDTH) / 2, SCREEN_BATTERY_IND_POS_Y - SCREEN_BATTERY_IND_CAP_HEIGHT, SCREEN_BATTERY_IND_CAP_WIDTH, WHITE); // cap top
  display.drawFastHLine(SCREEN_BATTERY_IND_POS_X, SCREEN_BATTERY_IND_POS_Y, (SCREEN_BATTERY_IND_WIDTH - SCREEN_BATTERY_IND_CAP_WIDTH) / 2, WHITE); // cap- cylinder join
  display.drawFastHLine(SCREEN_BATTERY_IND_POS_X + SCREEN_BATTERY_IND_CAP_WIDTH + (SCREEN_BATTERY_IND_WIDTH - SCREEN_BATTERY_IND_CAP_WIDTH) / 2, SCREEN_BATTERY_IND_POS_Y, (SCREEN_BATTERY_IND_WIDTH - SCREEN_BATTERY_IND_CAP_WIDTH) / 2, WHITE); // cap-cylinder join

  //display rectangles that indicate charge left
  //TODO use drawRect for just the outlines, fillRect for the full symbol
  for (uint8_t i = 0; i < SCREEN_BATTERY_IND_N; i++) {
    if (i * 100 / SCREEN_BATTERY_IND_N < c) {
      display.fillRect(SCREEN_BATTERY_IND_POS_X + SCREEN_BATTERY_IND_N_SPACE + 1, SCREEN_BATTERY_IND_POS_Y + (SCREEN_BATTERY_IND_N - i)*SCREEN_BATTERY_IND_N_SPACE + (SCREEN_BATTERY_IND_N - i - 1)*SCREEN_BATTERY_IND_N_HEIGHT, SCREEN_BATTERY_IND_WIDTH - 2 * SCREEN_BATTERY_IND_N_SPACE - 1, SCREEN_BATTERY_IND_N_HEIGHT, WHITE);
    }
    else {
      //comment the line below to avoid including empty rectangles
      //display.drawRect(SCREEN_BATTERY_IND_POS_X+SCREEN_BATTERY_IND_N_SPACE+1,SCREEN_BATTERY_IND_POS_Y+(SCREEN_BATTERY_IND_N-i)*SCREEN_BATTERY_IND_N_SPACE+(SCREEN_BATTERY_IND_N-i-1)*SCREEN_BATTERY_IND_N_HEIGHT,SCREEN_BATTERY_IND_WIDTH-2*SCREEN_BATTERY_IND_N_SPACE-1,SCREEN_BATTERY_IND_N_HEIGHT,WHITE);
    }
  }
}

/* draws the speed indicator on the display
    s is the speed in km/h
*/
void drawSpeed(uint8_t s) {
  if (s < 10) {
    display.drawChar(SCREEN_SPEED_X, SCREEN_SPEED_Y, '0', WHITE, BLACK, 3);
    display.drawChar(SCREEN_SPEED_X + 17, SCREEN_SPEED_Y, '0' + s, WHITE, BLACK, 3);
  }
  else {
    display.drawChar(SCREEN_SPEED_X, SCREEN_SPEED_Y, '0' + s / 10, WHITE, BLACK, 3);
    display.drawChar(SCREEN_SPEED_X + 17, SCREEN_SPEED_Y, '0' + s % 10, WHITE, BLACK, 3);
  }
  display.drawChar(SCREEN_SPEED_X + 6 + 5 * 0, SCREEN_SPEED_Y + 22, 'k', WHITE, BLACK, 1);
  display.drawChar(SCREEN_SPEED_X + 6 + 5 * 1, SCREEN_SPEED_Y + 22, 'm', WHITE, BLACK, 1);
  display.drawChar(SCREEN_SPEED_X + 6 + 5 * 2, SCREEN_SPEED_Y + 22, '/', WHITE, BLACK, 1);
  display.drawChar(SCREEN_SPEED_X + 6 + 5 * 3, SCREEN_SPEED_Y + 22, 'h', WHITE, BLACK, 1);
}

/* draws the odometer (total distance ever) on the display
    d is the distance in km - we use unsigned long to be able to go > 65535 km
*/
void drawOdometer(unsigned long d) {
  display.setCursor(SCREEN_ODO_X, SCREEN_ODO_Y);
  display.setTextColor(WHITE);
  display.print(F("Tot. "));
  display.print(d);
  display.print(F(" km"));
}

/* draws the tripmeter (trip distance) on the display
    d is the distance in hm, hectometers, not a typo
    we use hm to avoid floating point operations
    8int8_t would limit to 25.5 km trips
*/
void drawTripMeter(uint16_t d) {
  display.setCursor(SCREEN_ODO_X, SCREEN_ODO_Y - 9);
  display.setTextColor(WHITE);
  display.print(F("Trip "));
  display.print(d / 10);
  display.print(F("."));
  display.print(d % 10);
  display.print(F(" km"));
}

/* draws the remaining battery (distance) on the display
    d is the distance in km
*/
void drawBatteryDist(uint8_t d) {
  display.setCursor(SCREEN_BATTERY_IND_POS_X, SCREEN_BATTERY_IND_POS_Y + SCREEN_BATTERY_IND_HEIGHT + 2);
  display.setTextColor(WHITE);
  display.setTextWrap(false);
  display.print(d);
  display.print(F("km"));
}

/* draws the eco mode symbol on the display
    bitmap is the pointer to a PROGMEM bitmap

*/
void drawEcoSymbol(const uint8_t *bitmap, uint8_t w, uint8_t h) {
  display.drawBitmap(SCREEN_ECO_X, SCREEN_ECO_Y,  logo16_eco_bmp, w, h, WHITE);
}


/* draws a message to dether thieves
*/
void drawAlert(){
  display.setCursor(20, 20);
  display.setTextColor(WHITE);
  display.setTextWrap(false);
  display.println(F("Alarm active"));
  display.println(F("Police is on the way"));
  display.print(F("Owner alerted"));
}
