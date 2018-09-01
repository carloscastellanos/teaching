void setup() {
  size(600, 300);
  background(0);
}

void draw() {

  // Get a gaussian random number w/ mean of 0 and standard deviation of 1.0
  float val = randomGaussian();

  float sd = 90;                  // Define a standard deviation
  float mean = width/2;           // Define a mean value (middle of the screen along the x-axis)
  float x = ( val * sd ) + mean;  // Scale the gaussian random number by standard deviation and mean

  noStroke();
  fill(255, 10);
  noStroke();
  ellipse(x, height/2, 32, 32);   // Draw an ellipse at our "normal" random location
}