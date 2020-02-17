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

// Used for software SPI
#define OLED_CLK 13
#define OLED_MOSI 11
// Used for software or hardware SPI
#define OLED_CS 10
#define OLED_DC 8
// Used for I2C or SPI
#define OLED_RESET 9

// battery-drawing parameters
#define SCREEN_BATTERY_IND_HEIGHT 41
#define SCREEN_BATTERY_IND_WIDTH 20
#define SCREEN_BATTERY_IND_POS_X 106
#define SCREEN_BATTERY_IND_POS_Y 9
#define SCREEN_BATTERY_IND_CAP_HEIGHT 5
#define SCREEN_BATTERY_IND_CAP_WIDTH 10
#define SCREEN_BATTERY_IND_N 5 // number of rectangles to draw
#define SCREEN_BATTERY_IND_N_SPACE 2 // margin around the battery capacity indicators
#define SCREEN_BATTERY_IND_N_HEIGHT 6 // height of rectangle for capacity indication. Could be computed but worse for rounding errors

// software SPI
Adafruit_SSD1305 display(OLED_MOSI, OLED_CLK, OLED_DC, OLED_RESET, OLED_CS);
// hardware SPI
//Adafruit_SSD1305 display(OLED_DC, OLED_RESET, OLED_CS);

void setup()   {                
  Serial.begin(9600);
  Serial.println("OLED Display test 2719 Adafruit");
  
  // by default, we'll generate the high voltage from the 3.3v line internally! (neat!)
  display.begin();
  // init done
  
  display.display(); // show splashscreen
  delay(100);
  display.clearDisplay();   // clears the screen and buffer
  display.display();

// Battery and speed indicator
  for(uint8_t i = 0;i<=45;i++){
    display.clearDisplay();
    drawBattery(50);
    drawSpeed(i);
    display.display();
    delay(100);
  }
}


void loop() {
}

/* draws the battery indicator on the display
 *  c is the remaining charge in percent
 */
void drawBattery(uint8_t c){
  // display the outline of the battery indicator
  display.drawFastHLine(SCREEN_BATTERY_IND_POS_X,SCREEN_BATTERY_IND_POS_Y+SCREEN_BATTERY_IND_HEIGHT,SCREEN_BATTERY_IND_WIDTH+1,WHITE); // bottom line
  display.drawFastVLine(SCREEN_BATTERY_IND_POS_X, SCREEN_BATTERY_IND_POS_Y, SCREEN_BATTERY_IND_HEIGHT, WHITE); // first main vertical line
  display.drawFastVLine(SCREEN_BATTERY_IND_POS_X+SCREEN_BATTERY_IND_WIDTH, SCREEN_BATTERY_IND_POS_Y, SCREEN_BATTERY_IND_HEIGHT, WHITE); // second main vertical line
  display.drawFastVLine(SCREEN_BATTERY_IND_POS_X+(SCREEN_BATTERY_IND_WIDTH-SCREEN_BATTERY_IND_CAP_WIDTH)/2,SCREEN_BATTERY_IND_POS_Y-SCREEN_BATTERY_IND_CAP_HEIGHT,SCREEN_BATTERY_IND_CAP_HEIGHT+1,WHITE); // cap
  display.drawFastVLine(SCREEN_BATTERY_IND_POS_X+(SCREEN_BATTERY_IND_WIDTH-SCREEN_BATTERY_IND_CAP_WIDTH)/2+SCREEN_BATTERY_IND_CAP_WIDTH,SCREEN_BATTERY_IND_POS_Y-SCREEN_BATTERY_IND_CAP_HEIGHT,SCREEN_BATTERY_IND_CAP_HEIGHT+1,WHITE); // cap
  display.drawFastHLine(SCREEN_BATTERY_IND_POS_X+(SCREEN_BATTERY_IND_WIDTH-SCREEN_BATTERY_IND_CAP_WIDTH)/2,SCREEN_BATTERY_IND_POS_Y-SCREEN_BATTERY_IND_CAP_HEIGHT,SCREEN_BATTERY_IND_CAP_WIDTH,WHITE); // cap top
  display.drawFastHLine(SCREEN_BATTERY_IND_POS_X,SCREEN_BATTERY_IND_POS_Y,(SCREEN_BATTERY_IND_WIDTH-SCREEN_BATTERY_IND_CAP_WIDTH)/2,WHITE); // cap- cylinder join
  display.drawFastHLine(SCREEN_BATTERY_IND_POS_X+SCREEN_BATTERY_IND_CAP_WIDTH+(SCREEN_BATTERY_IND_WIDTH-SCREEN_BATTERY_IND_CAP_WIDTH)/2,SCREEN_BATTERY_IND_POS_Y,(SCREEN_BATTERY_IND_WIDTH-SCREEN_BATTERY_IND_CAP_WIDTH)/2,WHITE); // cap-cylinder join 

  //display rectangles that indicate charge left
  //TODO use drawRect for just the outlines, fillRect for the full symbol
  for(uint8_t i=0; i< SCREEN_BATTERY_IND_N;i++){
    if(i*100/SCREEN_BATTERY_IND_N<c){
      display.fillRect(SCREEN_BATTERY_IND_POS_X+SCREEN_BATTERY_IND_N_SPACE+1,SCREEN_BATTERY_IND_POS_Y+(SCREEN_BATTERY_IND_N-i)*SCREEN_BATTERY_IND_N_SPACE+(SCREEN_BATTERY_IND_N-i-1)*SCREEN_BATTERY_IND_N_HEIGHT,SCREEN_BATTERY_IND_WIDTH-2*SCREEN_BATTERY_IND_N_SPACE-1,SCREEN_BATTERY_IND_N_HEIGHT,WHITE);
    }
    else{
      //comment the line below to avoid including empty rectangles
      //display.drawRect(SCREEN_BATTERY_IND_POS_X+SCREEN_BATTERY_IND_N_SPACE+1,SCREEN_BATTERY_IND_POS_Y+(SCREEN_BATTERY_IND_N-i)*SCREEN_BATTERY_IND_N_SPACE+(SCREEN_BATTERY_IND_N-i-1)*SCREEN_BATTERY_IND_N_HEIGHT,SCREEN_BATTERY_IND_WIDTH-2*SCREEN_BATTERY_IND_N_SPACE-1,SCREEN_BATTERY_IND_N_HEIGHT,WHITE);
    }
  }
}

/* draws the speed indicator on the display
 *  s is the speed in km/h
 */


 
void drawSpeed(uint8_t s){
  if(s<10){
    display.drawChar(20,8,'0',WHITE,BLACK,3);
    display.drawChar(37,8,'0'+s,WHITE,BLACK,3);
  }
  else{
    display.drawChar(20,8,'0'+s/10,WHITE,BLACK,3);
    display.drawChar(37,8,'0'+s%10,WHITE,BLACK,3);
  }
  display.drawChar(25,30,'k',WHITE,BLACK,1);
  display.drawChar(30,30,'m',WHITE,BLACK,1);
  display.drawChar(35,30,'/',WHITE,BLACK,1);
  display.drawChar(40,30,'h',WHITE,BLACK,1);
}
