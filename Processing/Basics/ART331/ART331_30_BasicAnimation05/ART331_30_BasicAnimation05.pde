int increment = 50;
int bgColor = 0;
int nextTime = increment;

void setup() {
  size(600, 600);
}

void draw() {
  background(bgColor);
  if(millis() > nextTime) {
    bgColor +=10;
    if(bgColor > 255) {
      bgColor = 0;
    }
    nextTime = millis() + increment;
  }
}