int ints[] = {48, 510, 715};

void setup() {
 size(900,600);
}

void draw() {
  background(0);
  stroke(255);
  line(ints[0], 0, ints[0], height);
  line(ints[1], 0, ints[1], height);
  line(ints[2], 0, ints[2], height);
}