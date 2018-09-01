// Class for a ball

class Ball {
  // some properties of the ball
  int speed = 5;
  int ballWidth = 20;
  int ballHeight = 20;
  color ballColor = color(127, 127, 127);
  int opacity = 255;
  
  // x/y location of ball
  int x = 0;
  int y = 0;
  
  // variables to hold the l, r, t & b of the screen
  int left = 0;
  int right = width;
  int top = 0;
  int bottom = height;
  
  // direction
  int hDir = 1;
  int vDir = 1;
  
  // constructor
  Ball(int size) {
    this();
    this.ballWidth = size;
    this.ballHeight = size;
  }
  
  // constructor
  Ball(int x, int y, int size, int speed) {
    this();
    this.x = x;
    this.y = y;
    this.ballWidth = size;
    this.ballHeight = size;
    if(speed > 10)
      speed = 10;
    if(speed < 1)
      speed = 1;
    this.speed = speed;
  }
  
  // constructor
  Ball() {
    println("Ball initialized!");
    float h = random(1);
    float v = random(1);
    if(h>=0.5) {
      hDir = 1;
    } else {
      hDir = -1;
    }
    
    if(v>=0.5) {
      vDir = 1;
    } else {
      vDir = -1;
    }
  }
  
  void setColor(int r, int g, int b) {
    this.ballColor = color(r, g, b);
  }
  
  void setOpacity(int o) {
    this.opacity = o;
  }
  
  void setSpeed(int s) {
    if(s > 10)
      s = 10;
    if(s < 1)
      s = 1;
    this.speed = s;
  }
  
  void setSize(int s) {
    this.ballWidth = s;
    this.ballHeight = s;
  }
  
  void setLocation(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void run() {
    fill(this.ballColor, this.opacity);
  
    // calculate vertical motion
    this.y = round(this.y + (this.speed * this.vDir));
    if(this.y > this.bottom || this.y < this.top) {
      this.vDir *= -1;
    }
  
    // calculate horizontal motion
    this.x = round(this.x + (this.speed * this.hDir));
    if(this.x > this.right || this.x < this.left) {
      this.hDir *= -1;
    }
  
    // draw the shape with the new location
    ellipse(this.x, this.y, this.ballWidth, this.ballHeight);
  }
  
}