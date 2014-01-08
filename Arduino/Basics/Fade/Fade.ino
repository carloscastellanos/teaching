/*
 * Fade
 * Carlos Castellanos | 2014 | ccastellanos.com
 *
 *
 * Based on this tutorial:
 * http://arduino.cc/en/Tutorial/Fade
 *
 * This example shows how to fade an LED on pin 9
 * using the analogWrite() function.
 * This is known as Pulse Width Modulation (PWM)
 *
 * Can you think of other ways to control the fading of the LED?
 * Perhaps a photocell?
 */
int brightness = 0;    // how bright the LED is
const int fadeAmount = 5;    // how many points to fade the LED by
const int ledPin = 11; // LED pin, this pin must be a PWM-capable pin

void setup()  { 
  // declare the LED pin to be an output:
  pinMode(ledPin, OUTPUT);
} 

void loop()  { 
  // set the brightness of the LED pin:
  analogWrite(6, brightness);    

  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade: 
  if (brightness == 0 || brightness == 255) {
    fadeAmount = -fadeAmount ; 
  }     
  // wait for 30 milliseconds to see the dimming effect    
  delay(30);                            
}
