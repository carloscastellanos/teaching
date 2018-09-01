import processing.video.*;

// Variable for capture device
Capture capture;

int skip = 20;

void setup() {
  size(640, 480);
  capture = new Capture(this, width, height, 30);
  capture.start();
}

void draw() {
  if (capture.available()) { 
    // Reads the new frame
    capture.read(); 
  } 
  //image(capture, 0, 0);
  set(0,0,capture);
  
  // Begin loop to walk through every pixel
  for (int x = 0; x < capture.width; x+=skip) {
    for (int y = 0; y < capture.height; y+=skip) {
      int loc = x + y*capture.width;              // Step 1, what is the 1D pixel location
      float b = brightness(capture.pixels[loc]);  // Step 2, what is the brightest area?
      fill(b);                                    // Step 3, use brightest colr as fill color
      rect(x, y, skip, skip);                     // Step 4, draw a rectangle
    }
  }
}
