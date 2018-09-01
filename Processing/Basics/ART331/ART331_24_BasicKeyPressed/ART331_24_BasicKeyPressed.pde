int circleX = 300;
int circleY = 300;

void setup() {
  size(600,600);
}

void draw() {
 background(255);
 ellipse(circleX, circleY, 100, 100);
 
 if(keyPressed) {
   if(keyCode == UP) {
     circleY -= 5;
   } else if(keyCode == DOWN) {
     circleY += 5;
   } else if(keyCode == LEFT) {
     circleX -= 5;
   } else if(keyCode == RIGHT) {
     circleX += 5;
   }
 } 
}