class Blob {
  float minX, minY, maxX, maxY;
  
  ArrayList<PVector> points;
  
  // constructor
  Blob(float x, float y) {
    this.minX = x;
    this.maxX = x;
    this.minY = y;
    this.maxY = y;
    points = new ArrayList<PVector>();
    points.add(new PVector(x, y));
  }
  
  boolean isNear(float x, float y) {
    //float clampX = max(min(x, maxX), minX);
    //float clampY = max(min(y, maxY), minY);

    //float d = dist(clampX, clampY, x, y);
    
    float d = 1000000;
    for(PVector v:points) {
      float tempDist = dist(v.x, v.y, x, y);
      if(tempDist < d) {
        d = tempDist;
      }
    }
    
    if (d < distThreshold) {
      return true;
    } else {
      return false;
    }
  }
  
  void add(float x, float y) {
    minX = min(minX, x);
    minY = min(minY, y);
    maxX = max(maxX, x);
    maxY = max(maxY, y);
    points.add(new PVector(x, y));
  }
  
  float size() {
    return (maxX-minX)*(maxY-minY); 
  }
  
  void show() {
    stroke(0,255,0);
    noFill();
    strokeWeight(2);
    rectMode(CORNERS);
    rect(minX, minY, maxX, maxY);
    
    for(PVector v:points) {
     stroke(0, 255, 255);
     point(v.x, v.y);
    }
  }
  
  
}
