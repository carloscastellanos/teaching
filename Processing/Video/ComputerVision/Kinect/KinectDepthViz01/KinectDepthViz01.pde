import org.openkinect.processing.*;

// Kinect Library object
Kinect2 kinect2;

int skip = 20;

void setup() {
  size(512, 424); // actual size of kinect depth camera
  kinect2 = new Kinect2(this);
  kinect2.initDepth();
  kinect2.initDevice();

}

void draw() {
  background(0);
  
  PImage img = kinect2.getDepthImage();
  image(img,0,0);
  
  // Begin loop to walk through every pixel
  for (int x = 0; x < img.width; x+=skip) {
    for (int y = 0; y < img.height; y+=skip) {
      int loc = x + y*img.width;              // Step 1, what is the 1D pixel location
      float b = brightness(img.pixels[loc]);  // Step 2, what is the brightest area?
      fill(b);                                // Step 3, use brightest colr as fill color
      rect(x, y, skip, skip);                 // Step 4, draw a rectangle
    }
  }
}
