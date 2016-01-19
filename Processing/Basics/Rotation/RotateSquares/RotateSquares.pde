/**
  * Rotate squares
  *
  */

void setup() {
  size(600, 600);
  background(255);
  // set the rectangle to drw from the center point (as opposed to the corner)
  rectMode(CENTER);
  smooth();
  //set the stroke
  stroke(30, 40);
  // set fill color
  fill(20, 100, 250);
}

void draw () {
  // set the point of origin to the center of the window
  translate(width / 2, height / 2);
  // loop and decement by 10
  for (int s = 200; s > 0; s = s - 10) {
    // change the fill color
    fill(255 - s, 255 - s, 255);
    // roate based upon mouse location
    rotate((mouseX + mouseY) / 300.0);
    // draw the rectangle
    rect(0, 0, s, s);
  }
}

/*
Now practice with different shape primitives (ellipse, rect, etc)
and use data from the interent to change the size, rotation, color, etc
*/
