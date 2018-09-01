boolean black = false;

void setup() {
  size(600,600);
}

void draw() {
 if (black) {
    background(0);
 } else {
    background(255, 0, 0);
 }
}

void mousePressed() {
  black = !black;
}