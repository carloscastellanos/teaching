import processing.serial.*;

Serial myPort;

int lightValue = 0;
int delta = 0;
static final float pulseRate = 0.05;

Lantern[] lanterns;
int numLanterns = 80;

void setup() {
  size(800, 600);
  smooth();

  myPort = new Serial(this, Serial.list()[2], 9600); // select the appropriate serial port (may be differnt for your computer)
  myPort.bufferUntil('\n');

  // create lantern objects
  lanterns = new Lantern[numLanterns];
  for (int i = 0; i < lanterns.length; i++) {
    lanterns[i] = new Lantern(random(width), random(height));
  }
}

void draw() {
  background(10, 15, 30);

  // remap sensor values to create glow and lift
  float glow = map(lightValue, 0, 1023, 50, 255);
  float lift = map(lightValue, 0, 1023, 0.2, 2.5);

  // update each lantern
  for (Lantern l : lanterns) {
    l.update(lift, delta);
    l.display(glow);
  }
}

void serialEvent(Serial myPort) {
  // grab sensor values from the serial port
  String data = trim(myPort.readStringUntil('\n'));
  if (data != null) {
    String[] parts = split(data, ',');
    if (parts.length == 2) {
      lightValue = int(parts[0]);
      delta = int(parts[1]);
    }
  }
}

// Lantern class
class Lantern {
  float x, y;
  float speed;
  float size;
  float pulse;

  // constructor (randomize speed, size and pulse of each lantern)
  Lantern(float x, float y) {
    this.x = x;
    this.y = y;
    speed = random(0.3, 1.2);
    size = random(8, 18);
    pulse = random(TWO_PI);
  }

  // update lantern properties
  void update(float lift, int delta) {
    // Rising light = stronger upward motion
    if (delta > 0) {
      y -= speed * lift * 1.5;
    } else {
      y -= speed * lift * 0.5;
    }

    // Wrap around
    if (y < -20) {
      y = height + 20;
      x = random(width);
    }

    pulse += pulseRate;
  }

  // draw the lanterns to the screen
  void display(float glow) {
    float flicker = sin(pulse) * 10;
    noStroke();
    fill(glow, glow * 0.8, glow * 0.4, 180);
    ellipse(x, y, size + flicker, size + flicker);
  }
}
