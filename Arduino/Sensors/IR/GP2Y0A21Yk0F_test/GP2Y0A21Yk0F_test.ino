/*
 * GP2Y0A21YK0F_test
 *
 * Example of using SharpIR library to calculate the distance beetween the sensor and an obstacle
 * 
 * Carlos Castellanos
 * June 22, 2020
 *
 * based on code by Giuseppe Masino: https://github.com/qub1750ul/Arduino_SharpIR
 *
 * -----------------------------------------------------------------------------------
 *
 * Things that you need:
 * - Arduino
 * - A Sharp IR Sensor
 *
 *
 * The circuit:
 * - Arduino 5V -> Sensor's pin 1 (Vcc)
 * - Arduino GND -> Sensor's pin 2 (GND)
 * - Arduino pin A0 -> Sensor's pin 3 (Output)
 *
 *
 * See the Sharp sensor datasheet for the pin reference, the pin configuration is the same for all models.
 * Here is the datasheet for the model GP2Y0A21YK0F:
 * http://sharp-world.com/products/device/lineup/data/pdf/datasheet/gp2y0a21yk_e.pdf
 * 
 * 
 * 
 * BONUS:
 * Try calculcating the distance without using a third-party library
 * First convert the analog reading (which goes from 0 - 1023) to a voltage (0 - 5V):
 * float voltage = sensorValue * (5.0 / 1023.0);
 *
 * To get the distance (in cm), look at Fig. 2 in the datasheet which the distance to voltagecharacteristics
 * of the sensor. You can see that between 10 & 80cm it follows an exponential curve. If you can figure out
 * a function for that curve you will have your distance formula.
 * This is the formula I came up with: 27.3 * (voltage^-1.2)
 * float distance = 27.3 * pow(voltage , -1.199)
 *
 * You can also try the formula used in the library (which doesn't convert the analog readings to a voltage)
 * distance = 4800 / (sensorValue - 20)
 * 
 * You can use the graphing program (like Grapher that comes with MacOS), MS Excel or try a web-based tool:
 * https://www.desmos.com/calculator
 * 
 * Remember this only works for values between 10 & 80cm, so you must account for this in your code
 *
 */

//import the library in the sketch
#include <SharpIR.h>

//Create a new instance of the library
//Call the sensor "sensor"
//The model of the sensor is "GP2Y0A21YK0F"
//The sensor output pin is attached to the pin A0
SharpIR sensor(GP2Y0A21YK0F, A0);

void setup() {
  Serial.begin(9600); //Enable the serial comunication
}

void loop() {
  int distance = sensor.getDistance(); //Calculate the distance in centimeters and store the value in a variable

  // Print the measured distance to the serial monitor:
  Serial.print("Distance: ");
  Serial.print(distance);
  Serial.println("cm");
  delay(500);
}
