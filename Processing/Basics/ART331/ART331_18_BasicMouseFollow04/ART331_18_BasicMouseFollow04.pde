void setup() {
  size(600,600);
  strokeWeight(4);
}

void draw() {
 background(102);
 float grey = map(mouseX, 0, width, 0 , 255);
 fill(grey);
 ellipse(mouseX, mouseY, 30, 30);
}