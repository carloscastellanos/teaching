/*
  Analog Input
 Demonstrates analog input by reading an analog sensor on analog pin 0 and
 turning on and off a light emitting diode(LED)  connected to digital pin 13. 
 The amount of time the LED will be on and off depends on
 the value obtained by analogRead(). 
 
 The circuit:
 * Potentiometer attached to analog input 0
 * center pin of the potentiometer to the analog pin
 * one side pin (either one) to ground
 * the other side pin to +5V
 * LED anode (long leg) attached to digital output 13
 * LED cathode (short leg) attached to ground
 
 * Note: because most Arduinos have a built-in LED attached 
 to pin 13 on the board, the LED is optional.
 
 
 Created by David Cuartielles
 modified 30 Aug 2011
 By Tom Igoe
 
 This example code is in the public domain.
 
 http://arduino.cc/en/Tutorial/AnalogInput
 
 */

int sensorPin0 = A0;    // select the input pin for the potentiometer
int sensorPin1 = A1;    // select the input pin for the potentiometer
int sensorVal0 = 0;  // variable to store the value coming from the sensor
int sensorVal1 = 0;  // variable to store the value coming from the sen

void setup() {
  // initialize serial communications at 9600 bps:
  Serial.begin(19200); 
}

void loop() {
  // read the value from the sensors:
  sensorValue0 = analogRead(sensorPin0);
  sensorValue1 = analogRead(sensorPin1);  
    // print the results to the serial monitor:  
  //Serial.print("A0 ");    
  Serial.print(sensorValue0);
  Serial.print(" ");
  Serial.print(sensorValue1);
  Serial.print(" ");
  //Serial.println();

}
