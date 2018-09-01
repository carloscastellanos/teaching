Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;

void setup() {
  size(900, 600);
  
  ball1 = new Ball(80);
  ball1.setLocation(100, 50);
  ball1.setColor(200,20,28);
  ball1.setOpacity(75);
  
  ball2 = new Ball(width/2, height/2, 40, 3);
  ball2.setColor(100,220,2);
  ball2.setOpacity(180);
  
  ball3 = new Ball(60);
  ball3.setLocation(200, 100);
  ball3.setOpacity(140);
  ball3.setSpeed(2);
  
  ball4 = new Ball();
  ball4.setLocation(600, 380);
  ball4.setColor(190,10,205);
  ball4.setOpacity(50);
  ball4.setSize(100);
  ball4.setSpeed(8);
}

void draw() {
  background (204);
  
  ball1.run();
  
  ball2.run();
  
  ball3.run();
  
  ball4.run();
}