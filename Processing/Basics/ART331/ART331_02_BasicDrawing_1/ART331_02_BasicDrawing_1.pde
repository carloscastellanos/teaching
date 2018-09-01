void setup() {
  size (500, 500);
  background(204);
}

void draw() {
  stroke(200, 100, 50);
  strokeWeight(4);
  line(250, 125, mouseX, mouseY);
  fill(0, 0, 204);
  rect(250, 250, 90, 90);
}