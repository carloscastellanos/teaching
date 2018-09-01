PFont font;

void setup() {
  size(900, 600);
  font = loadFont("Helvetica-48.vlw");
}

void draw() {
  background(204);
  textFont(font, 48);
  fill(200, 8, 0);
  text("Hello world!", 300, 60);
  fill(0, 0, 0, 50);
  text("Hello world!", 303, 63);
  textAlign(CENTER);
  fill(200, 8, 0);
  text("Hello world! My name is Carlos Castellanos", 200, 200, 450, 500);
}