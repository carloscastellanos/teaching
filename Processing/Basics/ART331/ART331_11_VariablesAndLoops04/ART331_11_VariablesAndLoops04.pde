void setup() {
  size(600,600);
  noFill();
}

void draw() {
  background(200);
  strokeWeight(2);
  for(int i=20; i<width; i+=50) {
    ellipse(width/2, height/2, i, i);
  }
}