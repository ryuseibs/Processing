void setup() {
  size(480, 300);
  background(255);
  noFill();
  frameRate(10);
}

void draw() {
  float x = mouseX;
  float y = mouseY;
  concentrics(x, y);
}

void concentrics(float x, float y) {
  for ( int r = 50; r < 100; r += 10) {
    ellipse(x, y, r, r);
  }
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("0703b_####.png");
  }
}
