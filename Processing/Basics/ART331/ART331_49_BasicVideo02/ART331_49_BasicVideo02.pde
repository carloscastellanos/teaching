import processing.video.*;

Capture cap; 
int currX, currY;
int capWidth, capHeight;
PImage capImg, cropImg;

void setup() { 
  size(640, 480);

  currX = 0;
  currY = 0;
  capWidth = width/10;
  capHeight = height/10;

  cap = new Capture(this, width, height, 30);
  cap.start();
}


void draw() {
  if (cap.available()) {
    cap.read(); 
    //c.crop(currX, currY, capWidth, capHeight);
    capImg = new PImage(cap.getImage());
    cropImg = capImg.get(currX, currY, capWidth, capHeight);
    image(cropImg, currX, currY);

    currX += capWidth;

    // if we're at the end of the line...
    if (currX >= width) {
      // ...go to the beginning of the next line
      currX = 0;
      currY += capHeight;

      // if we're at the bottom of the window...
      if (currY >= height) {
        // ...restart from the top
        currY = 0;
      }
    }
  }
} 