/*
 * SensorGraphASCII
 *
 * Carlos Castellanos
 * June 23, 2020
 *
 * Example of serial communication between Processing & Arduino
 * Arduino sends the data as ASCII and Processing graphs the data
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
String inBuffer;

void setup() {
  size(1000, 1000); // window size
 
  // List all the available serial ports
  println(Serial.list());
  // change the number below to match your port
  String portName = Serial.list()[4];
  // create a serial object
  myPort = new Serial(this, portName, 9600);
  // empty the serial buffer
  myPort.clear();
  // don't generate a serialEvent() until you get a newline character
  myPort.bufferUntil('\n');
  
  // set the background color
  background(#110239);
}

void draw() {
  // Change yPos based on the last byte you read from the serial port:
  // To draw a graph with the numbers you read, pick a point whose distance 
  // from the bottom of the window corresponds to the number's value.
  // In other words, the variable yPos (corresponding to the vertical position)
  // must equal the window height minus the number's value (yPos = height - val).
  yPos = height - val;
  
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

void serialEvent(Serial s) {
  // get the string
  // Note: Every time you read a char, byte or string, it’s removed from
  // the serial buffer. So it’s good practice to read the string into a 
  // variable as shown below and immediately do something with that data 
  // (like graph it, which we do in the draw() method). Then read another string.
  String inBuffer = s.readStringUntil('\n');
  
  if (inBuffer != null) {
    inBuffer = trim(inBuffer); // remove any possible white space characters
    val = int(inBuffer); // get the latest string char & convert it to an int
    println(val); // print it
  }
}
