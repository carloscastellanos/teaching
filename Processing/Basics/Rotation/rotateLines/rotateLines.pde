/**
 * Rotate lines. 
 *  
 */
 
static final int linecount = 359;

void setup() {
  size(600,600);
  background(204);
  noLoop();
}

void draw() {
   // set the point of origin to the center of the window
   translate(width/2, height/2);
   for(int i=0; i<linecount; i++) {
     //variable to hld the line length
     int linelength = -200;
     //int linelength = int(random(-200, -100));
     //stroke the line with a color
     stroke(0);
     //stroke(random(255),random(255),random(255));
     // change the stroke weight (default is 1)
     strokeWeight(2);
     //strokeWeight(random(1, 10));
     // draw the line
     line(0, 0, 0, linelength);
     // rotate the line
     rotate(radians(i));
   }
}
/*
Now practice with different shape primitives (ellipse, rect, etc)
and use data from the interent to change the size, rotation, color, etc
*/

