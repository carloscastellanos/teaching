/*
Analog Sensor Basics
Carlos Castellanos | 2014 | ccastellanos.com
Based upon code by Jeff Thompson: www.jeffreythompson.org

Unlike a digital sensor which only has two possible states (on
or off), analog sensors have an infinite number of states between
their min/max - until they enter the Arduino!  Since the Arduino
is digital, we convert the sensor values using the "analog-to-digital
converter", or ADC.  This stairsteps our analog values, making
a fairly decent approximation of analog input.

** In the case of the Arduino, this stairstepping has 1024 possible
values (0-1023).

SCHEMATIC:
10k or 100k ohm potentiometer  

either end of pot +--------- +5V
                       
middle pin on pot +--------- analog pin

other end of pot  +--------- GND

CHALLENGE:
+ What happens when you switch the 5V and ground connections?
+ What other parameters of the LED can you map the potentiometer's
  rotation to?
+ Can you use the pot's rotation to generate text of some kind?

Based on the 'AnalogInput' sketch from the Arduino examples.

Refer to the potentiometer tutorial for more background:
http://www.arduino.cc/en/Tutorial/Potentiometer
*/

int sensorPin = A0;      // variable for analog pin (specified as A0-A5)
int sensorValue = 0;     // variable to read sensor value
int ledPin = 13;         // change LED blink rate based on sensor input!

void setup() {
  pinMode(ledPin, OUTPUT);
}

void loop() {
  
  // read the sensor's value (0-1023**)
  sensorValue = analogRead(sensorPin);
  
  // set the LED's blink to the sensor value
  digitalWrite(ledPin, HIGH);
  delay(sensorValue);
  digitalWrite(ledPin, LOW);
  delay(sensorValue);
}
  
