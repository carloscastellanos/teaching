int x = 0;
int y = 0;
int destX = 0;
int destY = 0;

void setup() {
  size(900, 600);
}

void draw() {
  background(204);
  ellipse(x, y, 40, 40);
  
  float easing = 0.1;
  int diffX = destX - x;
  x += diffX * easing;
  int diffY = destY - y;
  y += diffY * easing;
}

void mousePressed() {
  destX = mouseX;
  destY = mouseY;
}