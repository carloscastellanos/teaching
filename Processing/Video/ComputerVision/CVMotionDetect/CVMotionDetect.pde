import processing.video.*;

// Variable for capture device
Capture capture;
// Previous Frame
PImage prevFrame;
// How different must a pixel be to be a "motion" pixel
final float threshold = 50;
float motionX = 0;
float motionY = 0;
// linear interpolation
float lerpX = 0;
float lerpY = 0;

void setup() {
  size(640, 480);

  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    capture = new Capture(this, width, height, cameras[0], 30);
    capture.start();     
  }

  //capture = new Capture(this, width, height, 30);
  //capture.start();
  // Create an empty image the same size as the video
  prevFrame = createImage(capture.width, capture.height, RGB);
}

void draw() {
  loadPixels();
  capture.loadPixels();
  prevFrame.loadPixels();
  
  // XY coordinate of the different pixels (on average)
  float avgX = 0;
  float avgY = 0;
  
  // count how many pixels are iabove the threshold
  int count = 0;
  
  // Begin loop to walk through every pixel
  for (int x = 0; x < capture.width; x ++ ) {
    for (int y = 0; y < capture.height; y ++ ) {

      int loc = x + y*capture.width;            // Step 1, what is the 1D pixel location
      color current = capture.pixels[loc];      // Step 2, what is the current color
      color previous = prevFrame.pixels[loc];   // Step 3, what is the previous color

      // Step 4, compare colors (previous vs. current)
      float r1 = red(current); 
      float g1 = green(current); 
      float b1 = blue(current);
      float r2 = red(previous); 
      float g2 = green(previous); 
      float b2 = blue(previous);
      float diff = dist(r1, g1, b1, r2, g2, b2);

      // Step 5, How different are the colors?
      // If the color at that pixel has changed, then there is motion at that pixel.
      if (diff > threshold) {
        avgX += x;
        avgY += y;
        count++;
        pixels[loc] = color(255); // motion = white pixels
      } else {
        pixels[loc] = color(0); // no motion = black pixels
      }
    }
  }
  
  updatePixels();
  
  // here is where we do the averaging
  if (count > 20) { // if I found at least 1 pixel (might want to increase this)
    motionX = avgX/count;
    motionY = avgY/count;
    //avgX = avgX/count;
    //avgY = avgY/count;
    //// Draw a circle at the tracked pixel
    //fill(255, 0, 255);
    //strokeWeight(4.0);
    //stroke(0);
    //ellipse(avgX, avgY, 16, 16);
  }
  // Draw a circle at the tracked pixel
  lerpX = lerp(lerpX, motionX, 0.1);
  lerpY = lerp(lerpY, motionY, 0.1);
  fill(255, 0, 255);
  strokeWeight(4.0);
  stroke(0);
  ellipse(lerpX, lerpY, 16, 16);
}

void captureEvent(Capture video) {
  // Save previous frame for motion detection!!
  prevFrame.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height); // Before we read the new frame, we always save the previous frame for comparison!
  prevFrame.updatePixels();  // Read image from the camera
  video.read();
}
