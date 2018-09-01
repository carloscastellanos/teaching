int pattern = 1;

void setup() {
  size(600,600);
}

void draw() {
  background(255);
  noFill();
  strokeWeight(1);
  float density = map(mouseX, 0, width, 20, 50);
  
  // x's
  if(pattern == 1) {
    for(int i=25; i<=width-25; i+=density) {
      for(int j=25; j<=height-25; j+=density) {
        line(i-5, j-5, i+5, j+5);
        line(i-5, j+5, i+5, j-5);
      }
    }
  }
  
  // perspective lines
  else if(pattern == 2) {
    for(int i=25; i<=width-25; i+=density) {
      for(int j=25; j<=height-25; j+=density) {
        line(i, j, width/2, height/2);
      }
    }
    
  }
  
  // circles
  else if(pattern == 3) {
    for(int i=25; i<width; i+=density) {
      for(int j=25; j<height; j+=density) {
        ellipse(i, j, 50, 50);
      }
    }
    
  }
  
  // circles, increasing strokeweight
  else if(pattern == 4) {
    int count = 0;
    for(int i=25; i<width; i+=density) {
      for(int j=25; j<height; j+=density) {
        strokeWeight(count * 0.1);
        ellipse(i, j, 20, 20);
        count++;
      }
    }
  }
  
  // x's, increasing strokeweight
  else if(pattern == 5) {
    int count = 0;
    for(int i=25; i<width; i+=density) {
      for(int j=25; j<height; j+=density) {
        strokeWeight(count*0.05);
        line(i-5, j-5, i+5, j+5);
        strokeWeight(count*0.03);
        line(i-5, j+5, i+5, j-5);
        count++;
      }
    }    
  }
  
  textSize(12);
  fill(127, 8, 0);
  text("Pattern: " + pattern, 20, 585);
}

void mousePressed() {
  pattern++;
  if(pattern > 5) pattern = 1;
}