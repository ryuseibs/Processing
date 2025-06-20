void setup() {
  size(480, 300);
  background(0);
  noLoop();
  rectMode(CENTER);
}

void draw() {
  for (int y = 0; y <= height; y += 20) {
    for (int x = 0; x <= width; x += 20) {
      float dx = random(-2, 2);
      float dy = random(-2, 2);
      rect(x + dx, y + dy, 18, 18);
    }
  }
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("0803b_####.png");
  }
}
