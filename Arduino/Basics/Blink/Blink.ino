/*
 * Blink
 * Carlos Castellanos | 2014 | ccastellanos.com
 *
 * The most basic Arduino example, the blinking LED.
 * This example repeatedly turns an LED on and off.
 * The Arduino equivalent of ""Hello world".
 *
 * Schematic:
 * - long leg of the LED in digital pin 13
 * - short leg in ground pin
 *
 * Suggestions:
 * Experiment with ways of making this behavior more complex
 * Try encoding a message (e.g. Morse Code)
 */

// Variables
// These are optional but allow for faster, more modular code

int ledPin = 13; // LED connected to digital pin 13
int onTime = 500; // time for the LED to be on (measured in milliseconds, or ms)
int offTIme = 500; //  time for the LED to be off

// this is code that is run once when your Arduino starts up
void setup() {
  // here we set the "mode" of the digital pin to output (so as to light up the LED)
  pinMode(ledPin, OUTPUT); 
}

// loop() runs over and over as fast as possible until the Arduino is turned off or reset
void loop() {
  digitalWrite(ledPin, HIGH);    // set the LED to high (on)
  delay(onTime);                 // pause everything for specified amount of time*
  digitalWrite(ledPin, LOW);     // turn LED off...
  delay(offTime);                // and pause again
}

// * NOTE: when in 'delay', the Arduino completely stops all processes
