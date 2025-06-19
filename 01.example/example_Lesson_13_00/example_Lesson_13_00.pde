void setup() {
  size(480, 300);
  background(255);
  noFill();
}

void draw() {
  float x = random(width);
  float y = random(height);
  ellipse(x, y, 100, 100);
}

void keyPressed() {
  if (key =='p') {
  saveFrame("0701a_####.png");
  }
}
