int bgcolor = 0;
int buttonX = 0;
int buttonY = 0;

void setup() {
  size(800,600);
  buttonX = width/2;
  buttonY = height/2;
}

void draw() {
 background(bgcolor);
 fill(255);
 noStroke();
 ellipse(buttonX, buttonY, 100, 100);
 
 float d = dist(buttonX, buttonY, mouseX, mouseY);
 if(d < 50) {
   cursor(HAND);
 } else {
   cursor(ARROW);
 }
 if(mousePressed && d < 50) {
   bgcolor = 102;
 } else {
   bgcolor = 0;
 }
}