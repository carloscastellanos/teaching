float angle = 0.0;
float speed = 0.05;

float thirdLine = 20.0;


void setup() {
  size(900, 600);
  fill(0);
  strokeWeight(10);
}

void draw() {
  float l0 = map(mouseX, 0, width, 10, 300);
  float l1 = map(mouseY, 0, height, 10, 300);
  
  background(204);
  
  translate(width/2, height/2);
  rotate(angle);
  line(0, 0, 0, l0);
  
  translate(0, l0);
  rotate(angle);
  line(0, 0, 0, l1);
  
  
  translate(0, l1);
  rotate(angle);
  line(0, 0, 0, thirdLine);
  
  angle += speed;
}

void mousePressed() {
  thirdLine = 75;
}

void mouseReleased() {
  thirdLine = 20;
}