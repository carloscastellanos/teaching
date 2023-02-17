class Particle {
  float x;
  float y;
  
  float vx;
  float vy;
  
  int pSize;

  Particle() {
    pSize = 10;
    x = width/2;
    y = height/2;
    float a = random(TWO_PI);
    float speed = random(1,2);
    vx = cos(a)*speed;
    vy = sin(a)*speed;
  }

  void display() {
    noStroke();
    color c = cat.get(int(x),int(y));
    fill(c,50);
    ellipse(x, y, this.pSize, this.pSize);
  }

  void move() {
    x = x + vx;//random(-5, 5);
    y = y + vy;//random(-5, 5);
    if (y < 0) {
      //y = height;
      vy=-vy;
    } 

    if (y > height) {
      //y = 0;
      vy = -vy;
    }
    if (x < 0) {
      //x = width;
      vx = -vx;
    } 

    if (x > width) {
      //x = 0;
      vx = -vx;
    }
  }
  
  void setParticleSize(int size) {
    if(size < 1) {
      size = 1;
    }
    this.pSize = size;
  }
  
  int getParticleSize() {
    return this.pSize;
  }
}
