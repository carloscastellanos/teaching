/*
 * SensorGraph
 *
 * Carlos Castellanos
 * June 23, 2020
 *
 * Example of serial communication between Processing & Arduino
 * Arduino sends one byte and Processing graphs the data
 *
 * 
 *
 */

import processing.serial.*;

Serial myPort; // Serial object

float xPos = 0; // horizontal position of the graph
float yPos = 0; // vertical position of the graph

// Data received from the serial port
int val;

void setup() {
  size(1000, 1000); // window size
 
  // List all the available serial ports
  println(Serial.list());
  // change the number below to match your port
  String portName = Serial.list()[4];
  myPort = new Serial(this, portName, 9600);
  myPort.clear(); // empty the serial buffer
  
  // set the background color
  background(#110239);
}

void draw() {
  // Change yPos based on the last byte you read from the serial port:
  // To draw a graph with the bytes you read, pick a point whose distance 
  // from the bottom of the window corresponds to the byte's value.
  // In other words, the variable yPos (corresponding to the vertical position)
  // must equal the window height minus the byte's value (yPos = height - val).
  yPos = height - val;
  
  // Now we set the stroke color and draw a line at xPos (the horizontal position)
  // from the bottom of the screen to the vertical position you calculated in the
  // serialEvent() method.

  // draw the line
  stroke(#cccccc);
  line(xPos, height, xPos, yPos);
  
  // at the edge of the screen, go back to the beginning:
  if (xPos >= width) {
    xPos = 0;
    // clear the screen by resetting the background:
    background(#110239);
  } else {
    // increment the horizontal position for the next reading:
    xPos++;
  }
}

void serialEvent (Serial myPort) {
  // get the byte
  // Note: Every time you read a byte, it’s removed from the serial buffer.
  // So it’s good practice to read the byte into a variable as shown below 
  // and immediately do something with that byte 
  // (like graph it, which we do in the draw() method). Then read another byte.
  val = myPort.read();
  // print it:
  println(val);
}
