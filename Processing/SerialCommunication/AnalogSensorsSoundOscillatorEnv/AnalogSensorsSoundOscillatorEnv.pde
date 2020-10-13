/*
 * AnalogSensorsButtonSoundOscillator
 *
 * Carlos Castellanos
 * October 12, 2020
 *
 * Example of serial communication between Processing & Arduino to control
 * the parameters of a sound oscillator.
 * 
 * Arduino sends the data for three sensors as ASCII and Processing
 * uses that data to control the frequency and attack time of a 
 * triangle oscillator.
 *
 * This sketch uses the "punctuation" method for Serial comunication.
 *
 */


import processing.serial.*; // import the Processing serial library
import processing.sound.*;  // import the Processing sound library

Serial myPort;              // The serial port

TriOsc triOsc;              // Triangle wave oscillator

Env env;                    // Envelope

// Times and levels for the ASR envelope
float attackTime = 0.001;
float sustainTime = 0.01;
float sustainLevel = 0.3;
float releaseTime = 0.2;

// default frequency
float freq = 440;

// sensors
float sensor0, sensor1;

// trigger state
boolean trigger = false;
 
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
  
  // Create the oscillator
  triOsc = new TriOsc(this);
  
  // Create the envelope 
  env = new Env(this);
}

void draw() {
  background(0);
  fill(255);
  
  if(trigger) {
    // frequency
    freq = map(sensor1, 100, 800, 150, 1000);
    // play the triangle oscillator with an amplitude of 0.5
    triOsc.play(freq, 0.5);
    
    // The envelope gets triggered with the oscillator as input
    attackTime = map(sensor0, 0, 1023, 0.001, 0.5);
    env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
    
    // Draw the shape
    ellipse(width/2, height/2, 80, 80);
    
    trigger = false;
  } else {
    // Draw the shape
    ellipse(width/2, height/2, 40, 40);
  }
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
      // the button will send 0 or 1, which willturn the oscillator on/off
      if(sensors[2] > 0) {
        trigger = true;
      }
    }
  }
}
