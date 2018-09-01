void setup() {
  size(600,600);
  background(255);
  strokeWeight(2);
}

void draw() {
 if(mouseX < 300) {
   stroke(255,0,0);
 } else {
   stroke(0,255,0);
 }
 if(mousePressed) {
   ellipse(mouseX, mouseY, 30, 30); 
 }
}