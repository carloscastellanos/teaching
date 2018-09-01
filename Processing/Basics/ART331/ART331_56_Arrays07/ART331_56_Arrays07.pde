Table cities;

void setup() {
   size(1000, 540);
   fill(255, 150);
   noStroke();
   
   if(loadCities()) {
     println("File loaded properly.");
   } else {
     println("Error loading file.");
   }
}

void draw() {
  background(0);
  scale(2);
  for(int i=0; i<cities.getRowCount(); i++) {
    float latitude = cities.getFloat(i,"lat");
    float longitude = cities.getFloat(i,"lng");
    setXY(latitude, longitude);
  }
}

void setXY(float lat, float lng) {
  int x = round(map(lng, -180, 180, 0, width));
  int y = round(map(lat, 90, -90, 0, height));
  ellipse(x, y, 0.25, 0.25);
}

boolean loadCities() {
  try {
    cities = loadTable("cities.csv", "header"); 
    return true;
  } catch(Exception e) {
    println(e.toString());
    return false;
  }
}