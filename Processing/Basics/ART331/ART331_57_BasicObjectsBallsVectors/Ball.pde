// Class for a ball

class Ball {
  // some properties of the ball
  int ballWidth = 20;
  int ballHeight = 20;
  color ballColor = color(127, 127, 127);
  int opacity = 255;
  
  // location & velocity of ball
  PVector location;
  PVector velocity;
  
  // variables to hold the l, r, t & b of the screen
  int left = 0;
  int right = width;
  int top = 0;
  int bottom = height;
  
  // constructor
  Ball(int size) {
    this();
    this.ballWidth = size;
    this.ballHeight = size;
  }
  
  // constructor
  Ball(PVector loc, int size, PVector v) {
    this.location = loc;
    this.ballWidth = size;
    this.ballHeight = size;
    if(v.mag() > 10)
      v.setMag(10);
    if(v.mag() < 1)
      v.setMag(1);
    this.velocity = v;
    println("Ball initialized! " + this.toString());
  }
  
  // constructor
  Ball() {
    this.location = new PVector(random(width/2), random(height/2));
    this.velocity = new PVector(random(-10,10), random(10,-10));
    println("Ball initialized! " + this.toString());
  }
  
  void setColor(int r, int g, int b) {
    this.ballColor = color(r, g, b);
  }
  
  void setOpacity(int o) {
    this.opacity = o;
  }
  
  void setSpeed(PVector s) {
    if(s.mag() > 10)
      s.setMag(10);
    if(s.mag() < 1)
      s.setMag(1);
    this.velocity = s;
  }
  
  void setSize(int s) {
    this.ballWidth = s;
    this.ballHeight = s;
  }
  
  void setLocation(PVector loc) {
    this.location = loc;
  }
  
  void update() {
    this.location.add(this.velocity);
  
    // check if it's off screen vertically
    if(this.location.y > this.bottom || this.location.y < this.top) {
      this.velocity.y = this.velocity.y * -1;
    }
  
    // check if it's off screen horizontally
    if(this.location.x > this.right || this.location.x < this.left) {
      this.velocity.x = this.velocity.x * -1;
    }
  }
  
  void display() {
    // draw the shape with the new location
    fill(this.ballColor, this.opacity);
    ellipse(this.location.x, this.location.y, this.ballWidth, this.ballHeight);
  }
  
}
