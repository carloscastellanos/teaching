Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;

void setup() {
  size(900, 600);
  
  ball1 = new Ball(80);
  ball1.setLocation(new PVector(100, 50));
  ball1.setColor(200,20,28);
  ball1.setOpacity(75);
  
  ball2 = new Ball(new PVector(width/2, height/2), 40, new PVector(1, 2));
  ball2.setColor(100,220,2);
  ball2.setOpacity(180);
  
  ball3 = new Ball(60);
  ball3.setLocation(new PVector(200, 100));
  ball3.setOpacity(140);
  ball3.setSpeed(new PVector(-8, 2));
  
  ball4 = new Ball();
  ball4.setLocation(new PVector(600, 380));
  ball4.setColor(190,10,205);
  ball4.setOpacity(50);
  ball4.setSize(100);
  ball4.setSpeed(new PVector(1, 8));
}

void draw() {
  background (204);
  
  ball1.update();
  ball1.display();
  
  ball2.update();
  ball2.display();
  
  ball3.update();
  ball3.display();
  
  ball4.update();
  ball4.display();
}
