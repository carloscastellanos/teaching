import processing.video.*;
Capture capture;
Particle[] particles;

final int vidScale = 2;

void setup() {
  size(1280, 960);
  //size(640, 480);
  
  //printArray(Capture.list());
  
  capture = new Capture(this, width/vidScale, height/vidScale, 30);
  //capture = new Capture(this, Capture.list()[3]);
  //capture = new Capture(this, width, height, 30);
  capture.start();
  
  particles = new Particle[3000];
  for(int i=0; i<particles.length; i++) {
    particles[i] = new Particle();
    particles[i].setParticleSize(8);
    particles[i].setSpeed(5);
  }
  background(0);
}

void draw() {
  for(int i=0; i<particles.length; i++) {
    particles[i].display();
    particles[i].move();
  }
}

void captureEvent(Capture c) {
  c.read();
}