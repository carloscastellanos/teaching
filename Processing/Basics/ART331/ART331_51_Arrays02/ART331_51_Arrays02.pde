int mouseXPos[] = new int[10];
int current = 0;
int total = 10;

void setup() {
 size(900,600);
}

void draw() {
  background(0);
  stroke(255);
  
  for(int i=0; i<mouseXPos.length; i++) {
    line(mouseXPos[i], 0, mouseXPos[i], height);
  }
  mouseXPos[current] = mouseX;
  current++;
  if(current >= total) {
    current = 0;
  }
}