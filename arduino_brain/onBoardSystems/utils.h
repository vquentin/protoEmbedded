// return the number of elements in an array
#define NELEMS(x)  (sizeof(x) / sizeof((x)[0]))

// this is already defined in the Arduino IDE, no need to use here
//#define min(a, b) (((a) < (b)) ? (a) : (b)) 

/* This function plays the notes contained in pitch array, the array has two columns with tones and duration
 * Uses a passive buzzer connected to PIN_MUSIC pin
 * startTime is the value returned by millis() when the melody was started 
 */

 /*
void playNotes(int pitch[][2],unsigned int sizeA,unsigned long startTime,int pin){
  for(unsigned int i=0; i<sizeA;i++){
    int noteDuration = 1000/pitch[i][1]; // in ms
    unsigned long currentTime = millis() ;
    if(currentTime>startTime){
      
    tone(pin,pitch[i][0],noteDuration);
    delay(1.30*noteDuration); // need to refactor without the delay for FSM
    noTone(pin);
  }
}*/
