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
    // get distance from any the nearest corner in the blob ("clamping")
    float clampX = max(min(x, maxX), minX);
    float clampY = max(min(y, maxY), minY);

    float d = dist(clampX, clampY, x, y);
    
    //float recordDist = 1000000;
    //for(PVector v:points) {
    //  float d = dist(v.x, v.y, x, y);
    //  if(d < recordDist) {
    //    recordDist = d;
    //  }
    //}
    
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
