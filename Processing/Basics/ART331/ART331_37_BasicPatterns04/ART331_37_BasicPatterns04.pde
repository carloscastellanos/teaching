float angle = 0.0;
float speed = 0.05;
int numCircles = 5;

void setup() {
  size(900, 600);
  noFill();
}

void draw() {
  float l0 = map(mouseX, 0, width, 10, 300);
  
  background(204);
  
  translate(width/2, height/2);
  rotate(angle);
  for(int i=0; i<numCircles; i++) {
    pushMatrix();
      rotate(i * TWO_PI/numCircles);
      translate(0, l0);
      ellipse(0, 0, 20, 20);
    popMatrix();
  }

  angle += speed;
}

void mousePressed() {
  speed = 0.0;
}

void mouseReleased() {
  speed = 0.05;
}