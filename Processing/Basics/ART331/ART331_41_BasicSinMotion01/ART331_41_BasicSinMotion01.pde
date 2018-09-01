float angle = 0.0;
int offset = 120;
int scalar = 90;
float speed = 0.05;

void setup() {
  size(900, 600);
  fill(0);
}

void draw() {
  background(204);
  
  int y1 = round(offset + sin(angle) * scalar);
  int y2 = round(offset + sin(angle + 0.4) * scalar);
  int y3 = round(offset + sin(angle + 0.8) * scalar);
  
  ellipse(50, y1, 60, 60);
  ellipse(150, y2, 60, 60);
  ellipse(250, y3, 60, 60);
  
  angle+=speed;
  
  println(angle);
}