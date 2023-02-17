import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;        // Data received from the serial port
String inBuffer;

PImage cat;
Particle[] particles;

void setup() {
  size(612, 612);
  
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
  
  cat = loadImage("catsynth.jpg");
  particles = new Particle[3000];
  for(int i=0; i<particles.length; i++) {
    particles[i] = new Particle();
    particles[i].setParticleSize(8);
  }
  background(0);
}

void draw() {
  int particleSize = Math.round(map(val, 10, 1000, 2, 20)); // map sensor value to size
  for(int i=0; i<particles.length; i++) {
    particles[i].setParticleSize(particleSize);
    particles[i].display();
    particles[i].move();
  }
}

void serialEvent(Serial s) {
  // read from the serial port
  inBuffer = myPort.readStringUntil('\n');
  //inBuffer = s.readString();
  
  if (inBuffer != null) {
    inBuffer = trim(inBuffer);
    val = int(inBuffer);
    println(val);
  }
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
