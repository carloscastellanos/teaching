/**
 *
 * Carlos Castellanos
 *
 * Read data from the serial port and change the playback speed of a video
 * when an analog sensor connected to an Arduino output a varying voltage.
 */

import processing.serial.*;
import processing.video.*;

Movie mov;
Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port
String inBuffer;

void setup() 
{
  size(640, 360);
  background(0);
 
  mov = new Movie(this, "transit.mov");
  mov.loop();
  
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
  image(mov, 0, 0); // show the movie
  
  if (inBuffer != null) {
    inBuffer = trim(inBuffer);
    val = int(inBuffer);
    println(val);
  }

  float newSpeed = map(val, 0, width, 0.1, 2);
  mov.speed(newSpeed);
  
  fill(255);
  text(nfc(newSpeed, 2) + "X", 10, 30);
}

void serialEvent(Serial s) {
  inBuffer = myPort.readStringUntil('\n');
  //inBuffer = s.readString();
}

void movieEvent(Movie movie) {
  mov.read();  
}



/*

Arduino code:

void setup() {
 pinMode(2, OUTPUT);  // declare the ledPin as an OUTPUT
 Serial.begin(9600);
}

void loop() {
 int val = analogRead(0);    // read the value from the sensor
 Serial.println(val);
 
 delay(10);
}

*/
