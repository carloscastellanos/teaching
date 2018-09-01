
void setup() {
  size(600,600);
}

void draw() {
  background(200);
  
  for(int i=0; i<width; i++) {
    stroke(i/width * 255);
    line(i, 0, i, height);
  }
}