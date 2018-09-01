int x = 0;
boolean reverse = false;

void setup() {
  size(600,600);
}

void draw() {
  background(204);
  
  if(x > width) {
    reverse = true;
  }
  if(x < 0) {
    x=0;
    reverse = false;
  }
  if(reverse) {
    x-=5;
  } else {
    x+=5;
  }
  line(x, 0, x, height);
}