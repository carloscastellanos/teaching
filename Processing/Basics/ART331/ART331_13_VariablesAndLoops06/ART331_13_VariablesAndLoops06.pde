void setup() {
  size(600,600);
  noFill();
}

void draw() {
  background(200);
  
  //int count = 0;
  
  for(int i=25; i<=width-25; i+=25) {
    for(int j=25; j<=height-25; j+=25) {
      //strokeWeight(count*0.05);
      line(i-5, j-5, i+5, j+5);
      //strokeWeight(count*0.03);
      line(i-5, j+5, i+5, j-5);
      //count++;
    }
  }
}