void setup() {
  size(600,600);
  noFill();
}

void draw() {
  background(200);
  
  for(int i=25; i<=width-25; i+=25) {
    for(int j=25; j<=height-25; j+=25) {
      line(i, j, width/2, height/2);
    }
  }
}