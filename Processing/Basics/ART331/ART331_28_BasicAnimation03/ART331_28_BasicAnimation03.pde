int x = 0;
int y = 0;

void setup() {
  size(900, 600);
}

void draw() {
  background(204);
  ellipse(x, y, 40, 40);
  
  float easing = 0.1;
  int diffX = mouseX - x;
  x += diffX * easing;
  int diffY = mouseY - y;
  y += diffY * easing;
}