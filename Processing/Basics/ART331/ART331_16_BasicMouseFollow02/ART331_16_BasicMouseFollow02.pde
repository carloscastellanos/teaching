void setup() {
  size(600,600);
  background(255);
  strokeWeight(4);
}

void draw() {
 if(mousePressed) {
   line(mouseX, mouseY, pmouseX, pmouseY); 
 }
}