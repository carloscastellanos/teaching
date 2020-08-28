/*

=================================================
==  Arduino and Adafruit LSM303 Accelerometer  ==
==  3D Tilt example                            ==
==                                             ==
==  Carlos Castellanos                         ==
==  August 24, 2020                            ==
=================================================

*/

import processing.serial.*;

Serial myPort;

PShape myShape;

float roll, pitch, yaw;

void setup() {
  size (800, 800, P3D);
  
  // load the 3d model
  myShape = loadShape("07-14-15.obj");
  
  // Change the number in the Serial.list() array to the appropriate
  // number of the serial port that your microcontroller is attached to.
  String portName = Serial.list()[2];
  myPort = new Serial(this, portName, 9600);
  // empty the serial buffer
  myPort.clear();
  // don't generate a serialEvent() until you get an ASCII newline character
  myPort.bufferUntil('\n');
}

void draw() {
  background(0);

  // Set a new co-ordinate space
  pushMatrix();

    // add some 3 point lighting
    pointLight(200, 108, 0,  400, 400,  500);
    pointLight(200, 200, 255, -400, 400,  500);
    pointLight(255, 255, 255,    0,   0, -500);
    
    // Displace objects from 0,0
    translate(width/2, height/2, 0);
    
    textSize(18);
    fill(204);
    text("degrees     roll: " + roll + "          pitch: " + pitch + "          yaw: " + yaw, -320, 340);
    
    rotateX(radians(roll));
    rotateZ(radians(pitch));
    rotateY(radians(yaw));

    pushMatrix();
      noStroke();
      // 3D 0bject
      shape(myShape, 0, 0);
      //box(100, 100, 100);
    popMatrix();
  popMatrix();
}

// Read data from the Serial Port
void serialEvent (Serial myPort) { 
  // read the data from the Serial Port up to the newline character
  String data = myPort.readStringUntil('\n');

  // if you get any bytes other than the linefeed
  if (data != null) {
    data = trim(data); // remove whitespace characters
    // split the string at the commas and convert to floats
    float items[] = float(split(data, ','));
    // now print out those three floats using a for() loop
    print("Roll/Pitch/Yaw = ");
    for(int i=0; i<items.length; i++) {
      print(items[i] + "/t");
    }
    // add a linefeed at the end
    println();
    
    // assign the sensor tilt values (in degrees)
    if (items.length > 1) {
      roll = items[0];
      pitch = items[1];
      yaw = items[2];
    }
  }
}
