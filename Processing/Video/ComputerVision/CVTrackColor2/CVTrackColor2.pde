import processing.video.*;

// Variable for capture device
Capture capture;

// A variable for the color we are searching for.
color trackColor;

// threshold at which a color is considered "found"
final float threshold = 10;

void setup() {
  size(320, 240);
  capture = new Capture(this, width, height);
  capture.start();
  // Start off tracking for blue
  trackColor = color(0, 0, 255);
}

void draw() {
  capture.loadPixels();
  image(capture, 0, 0);

  // XY coordinate of closest color (on average)
  float avgX = 0;
  float avgY = 0;
  
  // count how many pixels are in the neighborhood of the color we want to track
  // we need this to calculate the average
  int count = 0;

  // Begin loop to walk through every pixel
  for (int x = 0; x < capture.width; x++) {
    for (int y = 0; y < capture.height; y++) {
      int loc = x + y*capture.width;
      // What is current color
      color currentColor = capture.pixels[loc];
      float r1 = red(currentColor);
      float g1 = green(currentColor);
      float b1 = blue(currentColor);
      float r2 = red(trackColor);
      float g2 = green(trackColor);
      float b2 = blue(trackColor);

      // Using euclidean distance to compare colors
      float d = dist(r1, g1, b1, r2, g2, b2); // We are using the dist( ) function to compare the current color with the color we are tracking.

      // If current color is less than the threshold add its location
      // and increment the count
      // So we only consider the color found if its color distance is less than the variable threshold. 
      // This threshold number is arbitrary and you can adjust this number depending
      // on how accurate you require the tracking to be.
      if (d < threshold) {
        stroke(255);
        strokeWeight(1);
        point(x, y);
        avgX += x;
        avgY += y;
        count++;
      }
    }
  }

  // here is where we do the averaging
  if (count > 0) { // if I found at least 1 pixel (might want to increase this)
    avgX = avgX/count;
    avgY = avgY/count;
    // Draw a circle at the tracked pixel
    fill(trackColor);
    strokeWeight(4.0);
    stroke(0);
    ellipse(avgX, avgY, 16, 16);
  }
}

void captureEvent(Capture video) {
  // Read image from the camera
  video.read();
}

void mousePressed() {
  // Save color where the mouse is clicked in trackColor variable
  int loc = mouseX + mouseY*capture.width;
  trackColor = capture.pixels[loc];
}
