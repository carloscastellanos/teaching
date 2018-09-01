import processing.video.*;

// Variable for capture device
Capture capture;
// Previous Frame
PImage prevFrame;

// How different must a pixel be to be a "motion" pixel
float threshold = 50;

void setup() {
  size(320, 240);
  // Using the default capture device
  capture = new Capture(this, width, height);
  capture.start();

  // Create an empty image the same size as the video
  prevFrame = createImage(capture.width, capture.height, RGB);
}

void draw() {
  background(0);
  
  //capture.filter(GRAY);

  // You don't need to display it to analyze it!
  image(capture, 0, 0);

  loadPixels();
  capture.loadPixels();
  prevFrame.loadPixels();

  // These are the variables we'll need to find the average X and Y
  float sumX = 0;
  float sumY = 0;
  int motionCount = 0; 

  // Begin loop to walk through every pixel
  for (int x = 0; x < capture.width; x++) {
    for (int y = 0; y < capture.height; y++) {
      // What is the current color
      color current = capture.pixels[x+y*capture.width];

      // What is the previous color
      color previous = prevFrame.pixels[x+y*capture.width];

      // Step 4, compare colors (previous vs. current)
      float r1 = red(current); 
      float g1 = green(current);
      float b1 = blue(current);
      float r2 = red(previous); 
      float g2 = green(previous);
      float b2 = blue(previous);

      // Motion for an individual pixel is the difference between the previous color and current color.
      float diff = dist(r1, g1, b1, r2, g2, b2);

      // If it's a motion pixel add up the x's and the y's
      if (diff > threshold) {
        sumX += x;
        sumY += y;
        motionCount++;
      }
    }
  }

  // average location is total location divided by the number of motion pixels.
  float avgX = sumX / motionCount; 
  float avgY = sumY / motionCount; 

  // Draw a circle based on average motion
  smooth();
  noStroke();
  fill(0);
  ellipse(avgX, avgY, 16, 16);
}

// New frame available from camera
void captureEvent(Capture video) {
  // Save previous frame for motion detection!!
  prevFrame.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
  prevFrame.updatePixels();  
  video.read();
}
