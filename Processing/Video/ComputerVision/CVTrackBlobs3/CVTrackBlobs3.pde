import processing.video.*;

// Variable for capture device
Capture capture;

// A variable for the color we are searching for.
color trackColor;

// threshold at which a color is considered "found"
float threshold = 10;
float distThreshold = 25;

ArrayList<Blob> blobs = new ArrayList<Blob>();

void setup() {
  size(640, 480);
  capture = new Capture(this, width, height);
  capture.start();
  // Start off tracking blue
  trackColor = color(0,0,255);
}

void draw() {
  capture.loadPixels();
  image(capture, 0, 0);
  
  blobs.clear();

  // Begin loop to walk through every pixel
  for(int x = 0; x < capture.width; x++) {
    for(int y = 0; y < capture.height; y++) {
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

      // If current color is less than the threshold create a Blob object
      // and add it to the blos list
      // So we only consider the color found if its color distance is less than the variable threshold. 
      // This threshold number is arbitrary and you can adjust this number depending
      // on how accurate you require the tracking to be.
      
      // Note: should probably check the blob that it's closest to and add it to that one
      if(d < threshold) {
        boolean found = false;
        for(Blob b : blobs) {
          if(b.isNear(x, y)) {
            b.add(x, y);
            found = true;
            break;
          }
        }
        if(!found) {
          Blob b = new Blob(x, y);
          blobs.add(b);
        }
      }
    }
  }
  
  for(Blob b : blobs) {
    if(b.size() > 500) {
      b.show();
    }
  }
}

void captureEvent(Capture video) {
  // Read image from the camera
  video.read();
  //video.filter(THRESHOLD, 0.7);
}

void mousePressed() {
  // Save color where the mouse is clicked in trackColor variable
  int loc = mouseX + mouseY*capture.width;
  trackColor = capture.pixels[loc];
}

void keyPressed() {
  if (key == 'a') {
    distThreshold++;
  } else if (key == 'z') {
    distThreshold--;
  }
  println(distThreshold);
}
