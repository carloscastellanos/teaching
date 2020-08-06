/*
 * AnalogSensorsButton_Handshaking
 *
 * Carlos Castellanos
 * August 5, 2020
 *
 * Example of serial communication between Processing & Arduino using the
 * "call-and-response" (handshaking) method
 * Arduino sends the data for three sensors as ASCII and Processing
 * uses that data not to control the position and color of a shape on the screen.
 * 
 *
 */


import processing.serial.*; // import the Processing serial library

Serial myPort;              // The serial port

float fgcolor = 0;          // Fill color defaults to black
float xpos, ypos;           // Starting position of the ball

boolean contact = false;    // Whether you've heard from the microcontroller
 
void setup() {
  size(800, 600);
  
  // List all the available serial ports
  println(Serial.list());
  
  // Change the number in the Serial.list() array to the appropriate number
  // of the serial port that your microcontroller is attached to.
  String portName = Serial.list()[4];
  myPort = new Serial(this, portName, 9600);
  
  // don't generate a serialEvent() until you get an ASCII newline character
  myPort.bufferUntil('\n');
}

void draw() {
  background(#2b9468); // green background
  fill(fgcolor);
  
  // Draw the shape
  ellipse(xpos, ypos, 40, 40);
  
}

void serialEvent(Serial myPort) {
  // read the serial buffer:
  String myString = myPort.readStringUntil('\n');
  if (myString != null) {
    myString = trim(myString); // remove whitespace chars (e.g. '\n')
    
    // wait & listen until you hear from the microncontroller
    if(contact==false) {
      if(myString.equals("0,0,0")) {
        myPort.clear(); // clear the serial buffer
        contact = true;
        myPort.write(65); // send back a byte (doesn't matter what) to ask for more data
      }
    } else {  // if you have heard from the microcontroller, proceed
      // split the string at the commas
      // and convert the sections into integers
      int sensors[] = int(split(myString, ','));
      // now print out those three integers using a for() loop, like so
      for(int i=0; i<sensors.length; i++) {
        print("Sensor " + i + ": " + sensors[i] + "\t");
      }
      // add a linefeed at the end
      println();
      
      // assign the sensor values to xpos & ypos
      if (sensors.length > 1) {
        xpos = sensors[0];
        ypos = sensors[1];
        // the button will send 0 or 1.
        // this converts them to 0 or 255 (black or white)
        fgcolor = sensors[2] * 255;
      }
    }
    // when you've parsed the data you have, ask for more
    myPort.write(65);
  }
}
