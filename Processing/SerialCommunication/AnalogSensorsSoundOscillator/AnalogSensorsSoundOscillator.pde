/*
 * AnalogSensorsButtonSoundOscillator
 *
 * Carlos Castellanos
 * September 30, 2020
 *
 * Example of serial communication between Processing & Arduino to control
 * the parameters of a sound oscillator.
 * 
 * Arduino sends the data for three sensors as ASCII and Processing
 * uses that data to control the position of a shape on the screen
 * as well as the frequency and amplitude of a triangle oscillator.
 *
 * This sketch uses the "punctuation" method for Serial comunication.
 *
 */


import processing.serial.*; // import the Processing serial library
import processing.sound.*;  // import the Processing sound library

Serial myPort;              // The serial port

TriOsc tri;                 // Triangle wave oscillator

Reverb reverb;              // Reverb
float room=0.8;
float damp=0.3;
float wet=0.9;

float sensor0, sensor1;     // Sensors
 
void setup() {
  size(800, 600);
  
  // List all the available serial ports
  println(Serial.list());
  
  // Change the number in the Serial.list() array to the appropriate
  // number of the serial port that your microcontroller is attached to.
  String portName = Serial.list()[4];
  myPort = new Serial(this, portName, 9600);
  
  // don't generate a serialEvent() until you get an ASCII newline character
  myPort.bufferUntil('\n');
  
  tri = new TriOsc(this);
  tri.play();
}

void draw() {
  background(#2b9468); // green background
  fill(0);
   
  tri.freq(map(sensor0, 200, 800, 150, 880)); // frequency 
  tri.amp(map(sensor1, 0, 1023, 0.0, 1.0));  // amplitude
  
  // Draw the shape
  float xloc = map(sensor1, 0, 1023, 0, width);
  float yloc = map(sensor0, 200, 800, height, 0);
  ellipse(xloc, yloc, 40, 40);
}

void serialEvent(Serial myPort) {
  // read the serial buffer:
  String myString = myPort.readStringUntil('\n');
  if (myString != null) {
    myString = trim(myString); // remove whitespace chars (e.g. '\n')
    // split the string at the commas
    // and convert the sections into integers
    int sensors[] = int(split(myString, ','));
    // now print out those three integers using a for() loop, like so
    for(int i=0; i<sensors.length; i++) {
      print("Sensor " + i + ": " + sensors[i] + "\t");
    }
    // add a linefeed at the end
    println();
    
    // assign the sensor values to variables
    if (sensors.length > 1) {
      sensor0 = sensors[0];
      sensor1 = sensors[1];
      // the button will send 0 or 1, which willturn the reverb on/off
      if(sensors[2] > 0) {
        wet = 0.9;
      } else {
        wet = 0.0;
      }
    }
  }
}
