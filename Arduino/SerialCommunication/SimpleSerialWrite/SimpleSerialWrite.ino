// Wiring / Arduino Code
// Code for sensing a switch status and writing the value to the serial port.

int switchPin = 2;                       // Switch connected to pin 2

void setup() {
  pinMode(switchPin, INPUT);             // Set pin 2 as an input
  Serial.begin(9600);                    // Start serial communication at 9600 bps
}

void loop() {
  if (digitalRead(switchPin) == HIGH) {  // If switch is ON,
    Serial.write(1);                     // send 1 to Processing
  } else {                               // If the switch is not ON,
    Serial.write(0);                     // send 0 to Processing
  }
  delay(100);                            // Wait 100 milliseconds
}




/*
 * 
 * Processing code
 * 
 * 
import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port

void setup() 
{
  size(200, 200);
  // I know that the first port in the serial list on my mac
  // is always my FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[2];
  println(portName);
  myPort = new Serial(this, portName, 9600);
}

void serialEvent(Serial myPort){
    if ( myPort.available() > 0) {  // If data is available,
    val = myPort.read();            // read it and store it in val
    }
}

void draw() {
  background(255);             // Set background to white
  if (val == 0) {              // If the serial value is 0,
    fill(0);                   // set fill to black
  } 
  else {                       // If the serial value is not 0,
    fill(204);                 // set fill to light gray
  }
  rect(50, 50, 100, 100);
  
  println(val);
}

 */
