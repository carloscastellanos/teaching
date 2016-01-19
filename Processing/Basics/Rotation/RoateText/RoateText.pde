PFont font;
float angle = 0.0;
 
void setup(){
size(600,600);
background(255);
smooth();
//font = loadFont("AppleGothic-48.vlw");
//textFont(font);
}
 
void draw(){
  //background(255);
  pushMatrix();
  // set the pint of origin to the mouse location
  translate(mouseX, mouseY);
  rotate(angle);
  fill(0,0,0);
  textSize(16);
  text("DX Media", width/50, height/50);
  // increment the angle (in radians)
  angle += 0.01;
  popMatrix();
  translate(mouseX, mouseY);
  rotate(angle);
  fill(255);
  textSize(6);
  text("Spin", width/20, height/20);
  // decrement the angle (in radians)
  angle -= 0.5;

}
