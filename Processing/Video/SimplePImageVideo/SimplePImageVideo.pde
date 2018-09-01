import processing.video.*;

//PImage cat;
Capture capture;

void setup() {
  size(800, 600);
  //cat = loadImage("cat.jpg");
  capture = new Capture(this, width, height, 30);
  capture.start();
}

void draw() {
  if (capture.available()) {
    capture.read();
    background(0);
    image(capture, 0, 0, mouseX, mouseY);
  }
  
  //tint(150, 0, 250);
  //image(cat, 0, 0, mouseX, mouseY);
  //filter(BLUR, 8);
}