class Blob {
  float minX, minY, maxX, maxY;
  
  // constructor
  Blob(float x, float y) {
    this.minX = x;
    this.maxX = x;
    this.minY = y;
    this.maxY = y;
  }
  
  boolean isNear(float x, float y) {
    // get the distance from the center of the blob
    float centerX = (minX + maxX) / 2;
    float centerY = (minY + maxY) / 2;
    float d = dist(centerX, centerY, x, y);
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
  }
  
  
}
