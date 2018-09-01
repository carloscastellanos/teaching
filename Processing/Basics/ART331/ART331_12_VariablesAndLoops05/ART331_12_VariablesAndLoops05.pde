void setup() {
  size(600,600);
  noFill();
}

void draw() {
  background(255);
  
  //int count = 0;
  
  for(int i=25; i<width; i+=50) {
    for(int j=25; j<height; j+=50) {
      //stroke(count);
      //strokeWeight(count*0.1);
      ellipse(i, j, 20, 20);
      //count++;
    }
  }
}