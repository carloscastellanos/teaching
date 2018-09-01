float angle = 0.0;
float speed = 0.005;
int numCircles = 5;

void setup() {
  size(900, 600);
  noFill();
}

void draw() {
  float l0 = map(mouseX, 0, width, 10, 300);
  float l1 = map(mouseY, 0, height, 10, 300);
  
  background(204);
  
  translate(width/2, height/2);
  rotate(angle);
  for(int i=0; i<numCircles; i++) {
    pushMatrix();
      rotate(i * TWO_PI/numCircles);
      translate(0, l0);
      ellipse(0, 0, 20, 20);

      rotate(angle);
      for(int j=0; j<numCircles; j++) {
        pushMatrix();
          rotate(j * TWO_PI/numCircles);
          translate(0, l1);
          ellipse(0, 0, 20, 20);
          
          rotate(angle);
          for(int k=0; k<numCircles; k++) {
            pushMatrix();
              rotate(k * TWO_PI/numCircles);
              translate(0, 50);
              ellipse(0, 0, 20, 20);
            popMatrix();
            
          }
        popMatrix();
      }
     popMatrix();
  }

  angle += speed;
}

void mousePressed() {
  speed = 0.0;
}

void mouseReleased() {
  speed = 0.005;
}