import org.openkinect.processing.*;

// Kinect Library object
Kinect2 kinect2;

int skip = 20;

void setup() {
  size(512, 424, P3D); // actual size of kinect depth camera
  kinect2 = new Kinect2(this);
  kinect2.initDepth();
  kinect2.initDevice();

}

void draw() {
  background(0);
  
  PImage img = kinect2.getDepthImage();
  //image(img,0,0);
  
  // Begin loop to walk through every pixel
  for (int x = 0; x < img.width; x+=skip) {
    for (int y = 0; y < img.height; y+=skip) {
      int loc = x + y*img.width;              // Step 1, what is the 1D pixel location
      float b = brightness(img.pixels[loc]);  // Step 2, what is the brightest area?
      float z = map(b, 0, 255, 250, -250);    // Step 3, remapbrightness to distance on z axis
      fill(255-b);                            // Step 4, use inverted brightest color as fill color
      pushMatrix();                           // Step 5, do some translation 
      translate(x,y,z);
      rect(x, y, skip/2, skip/2);             // Step 6, draw a rectangle
      popMatrix();
    }
  }
}
