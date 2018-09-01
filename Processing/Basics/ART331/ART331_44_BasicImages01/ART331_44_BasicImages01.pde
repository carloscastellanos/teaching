PImage img;

void setup() {
  size(900, 600);
  img = loadImage("worms.jpg");
}

void draw() {
  background(204);
  image(img, 10, 10);
  image(img, 600, 450, 100, 100);
  
  float aspect = img.height / img.width;
  int imageW = 100;
  int imageH = round(imageW * aspect);
  image(img, 10, 450, imageW, imageH);
}