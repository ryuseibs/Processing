void setup() {
  size(480, 300);
  background(255);
  stroke(255, 0, 0);
  strokeWeight(5);
}

void draw() {
  float x = random(width);
  float y = random(height);
  point(x, y);
}

void keyPressed() {
  if (key == 'p') {
  saveFrame("0301a_####.png");
  }
}
