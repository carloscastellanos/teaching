import processing.sound.*;

SinOsc osc;

void setup() {
  size(200, 200);
  osc = new SinOsc(this);
  osc.play();
}

void draw() {
  background(255);
  
  float freq = map(mouseX, 0, width, 150, 880);
  osc.freq(freq);
  ellipse(mouseX, 100, 32, 32);
}