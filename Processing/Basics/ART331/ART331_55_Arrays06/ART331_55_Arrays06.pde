int myRandom[];
String randomFromFile[];

void setup() {
 size(1000,600);
 
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
    int x = 5+rnd*10;
    fill(255, 40);
    ellipse(x, height/2, 10, 10);
    
    rnd = int(randomFromFile[i]);
    x = 5+rnd*10;
    ellipse(x, height/2 + 10, 10, 10);
  }
}

boolean loadNumbers() {
  try {
    randomFromFile = loadStrings("randomNumbers.txt");
    myRandom = new int[randomFromFile.length];
    for(int i=0; i<randomFromFile.length; i++) {
      myRandom[i] = round(random(0, 100));
    }  
    return true;
  } catch(Exception e) {
    println(e.toString());
    return false;
  }
}