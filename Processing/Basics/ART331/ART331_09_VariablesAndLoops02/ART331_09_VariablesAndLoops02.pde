int x = 0;

void setup() {
  size(600,600);
}

void draw() {
  background(204);
  
  /*
  x = 5;
  line(x, 0, x, height);
  
  x += 5;
  line(x, 0, x, height);
  
  x += 5;
  line(x, 0, x, height);
  
  x += 5;
  line(x, 0, x, height);
  
  x += 5;
  line(x, 0, x, height);
  */
  
  for(int i=0; i<width; i+=5) {
    line(i, 0, i, height);
  }  
}