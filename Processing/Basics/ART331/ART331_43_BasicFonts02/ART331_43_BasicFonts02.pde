PFont font;
String[] lines;
int i=0, j=0;
int x=10, y=15;
String message;
boolean go = true;
int fontSize = 12;

void setup()
{
  size(600, 750);
  font = loadFont("Geneva-12.vlw");
  textFont(font, fontSize);
  String str = ""+"ART331_43_BasicFonts02.pde";
  lines = loadStrings(str);
  background(0);
  frameRate(20);
}

void draw() {
  textSize(fontSize);
  translate(0, 20);
  fill(0, 255, 0);
  if (i<lines.length) {
    message = lines[i];
  }

  if (j < message.length()) {
    text(message.charAt(j), x*j+10, y*i);
    j++;
  }
  else { 
    j=0;
    i++;
  }
}

void mousePressed()
{
  go = !go;
  
  if(go) {
    loop();
  } else {
    noLoop();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      fontSize++;
    } else if (keyCode == DOWN) {
      fontSize--;
    } 
  }
}