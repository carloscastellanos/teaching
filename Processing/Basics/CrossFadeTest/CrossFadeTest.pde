
PImage a, b;
int opacitya,opacityb;
void setup() 
{
  size(400, 400);
  a = loadImage("construct.jpg");  // Load an image into the program 
  b = loadImage("wash.jpg");   // Load an image into the program 
  frameRate(60);
  opacitya=255;
  opacityb=0;
}

void draw()
{
  background(0);
  // gradually increase opacity value of b
  if(opacityb<255)
  {
    opacityb=opacityb+2; 
  }
  tint(255,opacityb); // apply opacity without changing color
  image(b,0,0);
  noTint();
  
  // gradually decrease opacity value of a
  if(opacitya > 0)
  {
    opacitya=opacitya-2;
  }
   tint(255,opacitya); // apply opacity without changing color
  image(a,0,0);
  noTint();
}






