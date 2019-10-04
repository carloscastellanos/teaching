/**
 * Read data from the serial port and change the brightness of a rectangle
 * when an analog sensor connected to an Arduino output a varying voltage.
 */

import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port
String inBuffer;

void setup() 
{
  size(200, 200);
  // Call Serial.list() to get a list of available serial ports.
  // On my particular computer Serial.list()[1] returns 
  // the port that the Arduno is connected to.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[1];
  println(portName);
  myPort = new Serial(this, portName, 9600);
  myPort.clear(); // empty the serial buffer
  
  // read bytes into a buffer until you get a linefeed (ASCII 10):
  myPort.bufferUntil('\n');
}

void draw() {
  if (inBuffer != null) {
    inBuffer = trim(inBuffer);
    val = int(inBuffer);
    println(val);
  }

  background(255);             // Set background to white
  
  float col = map(val, 200, 900, 0, 255);
  fill(col);
  rect(50, 50, 100, 100);
}

void serialEvent(Serial s) {
  //inBuffer = myPort.readStringUntil('\n');
  inBuffer = s.readString();
}
