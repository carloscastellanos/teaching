import processing.serial.*; // import the Processing serial library

Serial myPort;              // The serial port

float fgcolor = 0;          // Fill color defaults to black
float xpos, ypos;           // Starting position of the ball
 
void setup() {
  size(800, 600);
  
  // List all the available serial ports
  println(Serial.list());
  
  // Change the 0 to the appropriate number of the serial port
  // that your microcontroller is attached to.
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
}
