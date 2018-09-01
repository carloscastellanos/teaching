void setup() {
  size(600, 400);
  background(0);
}

void draw() {

  // Get a gaussian random number w/ mean of 0 and standard deviation of 1.0
  float valx = randomGaussian();
  println(valx);
  float sdx = 90;                  // Define a standard deviation
  float meanx = width/2;           // Define a mean value (middle of the screen along the x-axis)
  float x = ( valx * sdx ) + meanx;  // Scale the gaussian random number by standard deviation and mean
  
  float valy = randomGaussian();
  float sdy = 60;  
  float meany = height/2;
  float y = ( valy * sdy ) + meany;

  noStroke();
  fill(255, 10);
  noStroke();
  ellipse(x, y, 32, 32);   // Draw an ellipse at our "normal" random location
}