int angle = 0;

void setup() {
  size(900, 600);
  fill(0);
}

void draw() {
  background(204);
  pushMatrix();
    translate(mouseX, mouseY);
    rotate(radians(angle));
    scale(3);
    line(-50, -50, 50, 50);
    line(50, -50, -50, 50);
    angle++;
  popMatrix();
  
  noFill();
  rect(10, 10, width-20, height-20);
}