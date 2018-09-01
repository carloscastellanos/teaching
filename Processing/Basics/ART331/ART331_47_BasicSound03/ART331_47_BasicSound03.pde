import processing.sound.*;

// sample object (for a sound)
SoundFile sf;
// amplitude object
Amplitude analyzer;


void setup() {
  size(480, 270);
  sf = new SoundFile(this, "all_17bars.mp3");
  sf.loop();

  // create a new Amplitude analyzer
  analyzer = new Amplitude(this);

  // Patch the input to a volume analyzer
  analyzer.input(sf);
}

void draw() {
  background(255);

  // Get the overall volume (between 0 and 1.0)
  float vol = analyzer.analyze();
  fill(127);
  stroke(0);

  // Draw an ellipse with size based on volume
  ellipse(width/2, height/2, 10+vol*200, 10+vol*200);
}