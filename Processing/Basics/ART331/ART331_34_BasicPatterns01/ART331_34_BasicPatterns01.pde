float angle = 0.0;
float speed = 0.05;

void setup() {
  size(900, 600);
  fill(0);
  strokeWeight(10);
}

void draw() {
  float l0 = map(mouseX, 0, width, 10, 300);
  background(204);
  translate(width/2, height/2);
  rotate(angle);
  line(0, 0, 0, l0);
  
  angle += speed;
}