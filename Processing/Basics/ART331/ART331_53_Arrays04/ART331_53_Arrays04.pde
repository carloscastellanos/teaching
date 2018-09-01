float myRandom[] = new float[100];

void setup() {
 size(1000,600);
 for(int i=0; i<100; i++) {
   myRandom[i] = random(0, 100);
 }
}

void draw() {
  background(0);
  noStroke();
  
  for (int i=0; i<myRandom.length; i++) {
    float rnd = myRandom[i];
    float a = map(rnd, 0, 100, 0, 255);
    int x = 5+i*10; 
    fill(255, a);
    ellipse(x, height/2, 10, 10);
  }
}