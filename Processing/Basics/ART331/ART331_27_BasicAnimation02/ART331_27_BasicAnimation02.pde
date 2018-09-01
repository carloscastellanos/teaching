int x = 0;

void setup() {
  size(900, 600);
}

void draw() {
  background(204);
  line(x, 0, x, height);
  
  float easing = 0.2;
  int diff = mouseX - x;
  x += diff * easing;
}