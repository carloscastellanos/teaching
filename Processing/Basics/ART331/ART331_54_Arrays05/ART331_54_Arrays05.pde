int myRandom[] = new int[100];
String randomFromFile[];

void setup() {
 size(1000,600);
 for(int i=0; i<100; i++) {
   myRandom[i] = round(random(0, 100));
 }
 if(loadNumbers()) {
   println("File loaded properly.");
 } else {
   println("Error loading file.");
 }
}

void draw() {
  background(0);
  noStroke();
  
  for (int i=0; i<myRandom.length; i++) {
    int rnd = myRandom[i];
    int a = round(map(rnd, 0, 100, 0, 255));
    int x = 5+i*10; 
    fill(255, a);
    ellipse(x, height/2, 10, 10);
  }
  
  for (int i=0; i<randomFromFile.length; i++) {
    int rnd = int(randomFromFile[i]);
    int a = round(map(rnd, 0, 100, 0, 255));
    int x = 5+i*10; 
    fill(255, a);
    ellipse(x, height/2 + 10, 10, 10);
  }
}

boolean loadNumbers() {
  try {
    randomFromFile = loadStrings("randomNumbers.txt");
    return true;
  } catch(Exception e) {
    println(e.toString());
    return false;
  }
}