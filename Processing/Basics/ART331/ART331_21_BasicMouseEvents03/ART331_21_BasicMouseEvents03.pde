int locX, locY;

void setup() {
  size(600,600);
  locX = width/2;
  locY = height/2;
  noStroke();
}

void draw() {
  background(102);
  ellipse(locX, locY, 20, 20);
}

void mousePressed() {
  locX = round(random(0, width));
  locY = round(random(0, height));
}