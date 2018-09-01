import processing.opengl.*;

/**
 * Explode 
 * by <a href="http://www.shiffman.net">Daniel Shiffman</a>. 
 * 
 * Mouse horizontal location controls breaking apart of image and 
 * Maps pixels from a 2D image into 3D space. Pixel brightness controls 
 * translation along z axis. 
 * 
 * Created 2 May 2005
 */
 
PImage img;       // The source image
int cellsize = 2; // Dimensions of each cell in the grid
int COLS, ROWS;   // Number of columns and rows in our system
int incr = 0;
float zz = 0.0f;
PFont font;
void setup()
{
  size(400, 300, P3D); 
  font = loadFont("HelveticaCY-Bold-48.vlw");
  img = loadImage("1.jpg"); // Load the image
  COLS = img.width/cellsize;            // Calculate # of columns
  ROWS = img.height/cellsize;           // Calculate # of rows
  colorMode(RGB,255,255,255,100);   // Setting the colormode
}
void draw()
{
  background(0);

  // Begin loop for columns
  for ( int i = 0; i < COLS;i++) {
    // Begin loop for rows
    for ( int j = 0; j < ROWS;j++) {
      int x = i*cellsize + cellsize/2; // x position
      int y = j*cellsize + cellsize/2; // y position

      int loc = x + y*img.width;           // Pixel array location
      int c = img.pixels[loc];       // Grab the color
      // Calculate a z position as a function of mouseX and pixel brightness
      float z = (incr / (float) img.width) * brightness(img.pixels[loc]) - zz;
      // float z = (incr / (float) img.width) *( brightness(img.pixels[loc]) + random(199))/2 - zz;
      // Translate to the location, set fill and stroke, and draw the rect
      pushMatrix();
      translate(x,y,z);
      fill(c);
      noStroke();
      rectMode(CENTER);
      int imgX = width/2 - img.width/2;
      int imgY = height/2 - img.height/2;
      rect(imgX,imgY,cellsize,cellsize);
      popMatrix();
    }
  }

  displayText();
  incr++;
  zz += 0.001f;
  println(incr + " " + zz);
}


void displayText() {
			// top strip
			noStroke();
			fill(204, 56); //light gray 1/4 opacity
			rect(0,0,width,30);

			// bottom strip
			noStroke();
			fill(204, 56); //light gray 1/4 opacity
			rect(0,height-30,width,30);

			// top text
			textFont(font, 24);
			fill(255);
			text("asdf", 3, 25);

			// bottom text
			textFont(font, 14);
			fill(255);
			text("fsdfsdfsdfsdfsd", 3, height-10);

}