void setup() {
  size(400, 400);
}

void draw() {
  // Set the noise level and scale.
  int noiseLevel = 255;
  float noiseScale = 0.009;

  // Iterate from top to bottom.
  for (int y = 0; y < height; y += 1) {
    // Iterate from left to right.
    for (int x = 0; x < width; x += 1) {
      // Scale the input coordinates.
      float nx = noiseScale * x;
      float ny = noiseScale * y;
      float nt = noiseScale * frameCount;

      // Compute the noise value.
      float c = noiseLevel * noise(nx, ny, nt);

      // Draw the point.
      stroke(c);
      point(x, y);
    }
  }
}
