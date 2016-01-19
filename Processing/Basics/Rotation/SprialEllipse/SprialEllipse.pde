/**
  * Spiral circles
  *
  */
  
void setup() {
  size(600,600);
  background(255);
  noLoop();
}

void draw() {
  translate(width/2, height/2);
  for(float f=0; f<300; f++) {
    rotate(0.1);
    fill (255,0,0);
    noStroke();
    ellipse(f, 0, 10, 10);
  }
}


