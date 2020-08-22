/*
 * Shift Register Example for 74HC595 shift register
 * 
 * Carlos Castellanos
 * August 20, 2020
 * 
 */


/***********************
=== PIN DEFINITIONS ===
***********************/
// Arduino pin connected to latch pin (RCLK) of 74HC595
const int latchPin = 8;
// Arduino pin connected to clock pin (SRCLK) of 74HC595
const int clockPin = 12;
// Arduino pin connected to the serial input pin (SER) of 74HC595
const int dataPin = 11;

// an array of bytes (in binary) representing an LED on/off sequence
const byte seq[8] = {B00000001, B00000011, B00000111, B00001111, B00011111, B00111111, B0111111, B11111111};

const int seqDelay = 400;   // delay between each full sequence
const int stepDelay = 100;  // delay between each sequence step

void setup() {
  // set pins to output because they are addressed in the main loop
  pinMode(latchPin, OUTPUT);
  pinMode(dataPin, OUTPUT);  
  pinMode(clockPin, OUTPUT);
}

void loop() {
  updateShiftRegister(0);         // turn off all LEDs
  delay(seqDelay);
  for(int i=0; i<8; i++) {
    updateShiftRegister(seq[i]);  // loop through the seq array and update the shift register
  }
}

void updateShiftRegister(byte b) {
  digitalWrite(latchPin, LOW);              // pull latch LOW to start sending data into the memory register
  shiftOut(dataPin, clockPin, LSBFIRST, b); // send the data
  digitalWrite(latchPin, HIGH);             // pull latch HIGH to copy values to the latch register and send out
  delay(stepDelay);
}
