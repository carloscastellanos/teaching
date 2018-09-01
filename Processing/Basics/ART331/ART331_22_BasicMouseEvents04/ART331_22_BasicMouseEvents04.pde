int locX, locY;
boolean drawStuff = false;

void setup() {
  size(600,600);
  locX = width/2;
  locY = height/2;
  noStroke();
}

void draw() {
  background(102);
  if (drawStuff) {
    locX = round(random(0, width));
    locY = round(random(0, height));
    ellipse(locX, locY, 20, 20);
  }
}

void mousePressed() {
  drawStuff = !drawStuff;
}