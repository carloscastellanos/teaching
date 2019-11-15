import processing.video.*;

// Variable for capture device
Capture capture;
// Previous Frame
PImage prevFrame;
// How different must a pixel be to be a "motion" pixel
final float hiThresh = 30;
final float loThresh = 15;
boolean hiMotionLimit = false;
boolean loMotionLimit = false;
Smooth smooth;
float finalMotionVal, mappedMotionVal;

void setup() {
  size(640, 480);
  
  // new smoother object
  smooth = new Smooth(50);
  
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
  
  // new capture object
  //capture = new Capture(this, width, height, 30);
  //capture.start();
  // Create an empty image the same size as the video
  prevFrame = createImage(capture.width, capture.height, RGB);
}

void draw() {
  background(0);
  
  // load a snapshot of the current display window into the pixels[] array
  // also load the current & previous video frames into their respective pixels[] arrays
  loadPixels();
  capture.loadPixels();
  prevFrame.loadPixels();

  // Begin loop to walk through every pixel
  // start with totalMotion = 0;
  float totalMotion = 0;
  for (int i=0; i<capture.pixels.length; i++) {
    color current = capture.pixels[i];      // Step 1, what is the current color
    color previous = prevFrame.pixels[i];   // Step 2, what is the previous color

    // Step 3, compare colors (previous vs. current)
    float r1 = red(current); 
    float g1 = green(current); 
    float b1 = blue(current);
    float r2 = red(previous); 
    float g2 = green(previous); 
    float b2 = blue(previous);
    float diff = dist(r1, g1, b1, r2, g2, b2);
    totalMotion += diff;
  }
  
  // Calculate average motion by smoothing values
  float avgMotion = totalMotion / capture.pixels.length;
  float smoothAvg = smooth.process(avgMotion);
  finalMotionVal = smoothAvg;
  
  // high & low thresholds
  if(finalMotionVal > hiThresh) {
    hiMotionLimit = true;
    fill(255,0,0);
  } else if(finalMotionVal > loThresh){
    hiMotionLimit = false;
    loMotionLimit = false;
    fill(125);
  } else if(finalMotionVal < loThresh) {
    loMotionLimit = true;
    fill(0,0,255);
  }
  
  ellipse(250, 50, 50,50);
  
  println("Average Motion: " + avgMotion);
  println("Smooth Motion: " + smoothAvg);
  println("Final Motion Detect: " + finalMotionVal);
  println();
  println("High threshold passed: " + hiMotionLimit);
  println("Low threshold passed: " + loMotionLimit);
  
  drawVisualization();
  //updatePixels();
}

void captureEvent(Capture video) {
  // Save previous frame for motion detection!!
  prevFrame.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height); // Before we read the new frame, we always save the previous frame for comparison!
  prevFrame.updatePixels();
  // Read image from the camera
  video.read();
}

void drawVisualization() {
  // draw visualization of motion data (sliders and text)
  stroke(0);
  strokeWeight(1);
  fill(204, 204, 204, 220);
  rect(5, 20, 200, 20);
  noStroke();
  fill(120, 160, 220, 127);
  if(finalMotionVal < hiThresh) {
    mappedMotionVal = map(finalMotionVal, 0, hiThresh, 0, 195);   
  }
  rect(10, 23, mappedMotionVal, 15);
  
  fill(204, 204, 204, 220);
  text("Final Motion Value: " + finalMotionVal, 5, 13);
  
  if(finalMotionVal < loThresh) {
    fill(0, 204, 80, 220);
  } else {
    fill(204, 204, 204, 220);
  }
  text("Low Threshold: " + loThresh, 5, 60);
  
  if(finalMotionVal > hiThresh) {
    fill(0, 204, 80, 220);
  } else {
    fill(204, 204, 204, 220);
  }
  text("High Threshold: " + hiThresh, 5, 80);
  noFill();
}
