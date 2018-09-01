/*
This example shows how to create a cluster of sine oscillators. Their pitch is dependant on the amount of motion
and the liocation of the dot renderer window. The dot is a liner interpolation of the between the current and previous
moving pixel. The Y position determines the basicfrequency of the oscillator and X the detuning of the oscillator.
The basic frequncy ranges between 150 and 1150 Hz.
*/


import processing.video.*;
import processing.sound.*;

SinOsc[] sineWaves; 

// The number of oscillators
int numSines = 5; 

// A float for calculating the amplitudes
float[] sineVolume;

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
  capture = new Capture(this, width, height, 30);
  capture.start();
  // Create an empty image the same size as the video
  prevFrame = createImage(capture.width, capture.height, RGB);
  
  // Create the oscillators and amplitudes
  sineWaves = new SinOsc[numSines];
  sineVolume = new float[numSines]; 

  for (int i = 0; i < numSines; i++) {
    // The overall amplitude shouldn't exceed 1.0 which is prevented by 1.0/numSines.
    // The ascending waves will get lower in volume the higher the frequency
    sineVolume[i] = (1.0 / numSines) / (i + 1);
    
    // Create the Sine Oscillators and start them
    sineWaves[i] = new SinOsc(this);
    sineWaves[i].play();
  }
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
  
  // Map mouseY to get values from 0.0 to 1.0
  float yoffset = (height - lerpY) / float(height);
  
  // Map that value logarithmically to 150 - 1150 Hz
  float frequency = pow(1000, yoffset) + 150;
  
  // Map mouseX from -0.5 to 0.5 to get a multiplier for detuning the oscillators
  float detune = lerpX / width - 0.5;
  
  // Set the frequencies, detuning and volume
  for (int i = 0; i < numSines; i++) { 
    sineWaves[i].freq(frequency * (i + 1 + i * detune));
    sineWaves[i].amp(sineVolume[i]);

  }
}

void captureEvent(Capture video) {
  // Save previous frame for motion detection!!
  prevFrame.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height); // Before we read the new frame, we always save the previous frame for comparison!
  prevFrame.updatePixels();  // Read image from the camera
  video.read();
}
