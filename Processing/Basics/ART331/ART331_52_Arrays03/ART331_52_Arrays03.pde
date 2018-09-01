
void setup() {
 size(1000,600);
}

void draw() {
  background(0);
  noStroke();
  
  for (int i=0; i<1000; i+=10) {
    float rnd = random(0, 100);
    float a = map(rnd, 0, 100, 0, 255);
    fill(255, a);
    ellipse(5 + i, height/2, 10, 10);
  }
}