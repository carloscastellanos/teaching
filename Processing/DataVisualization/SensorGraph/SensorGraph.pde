import processing.serial.*;

float xPos = 0; // horizontal position of the graph
float yPos = 0; // vertical position of the graph

Serial myPort; // Serial object

// Data received from the serial port
int val;
String inBuffer;

void setup() {
  size(1000, 1000); // window size
 
  // List all the available serial ports
  println(Serial.list());
  // change the number below to match your port
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  myPort.clear(); // empty the serial buffer
  // read bytes into a buffer until you get a linefeed (ASCII 10):
  myPort.bufferUntil('\n');
  
  // set the background color
  background(#110239);
}

void draw() {
  if (inBuffer != null) {
    inBuffer = trim(inBuffer);
    val = int(inBuffer);
    println(val);
  }

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
  //inBuffer = myPort.readStringUntil('\n');
  inBuffer = s.readString();
}
