void setup() {
  size(480, 300);
  background(255);
  noLoop();
  rectMode(CENTER);
}

void draw() {
  for (int y = 0; y <= height; y += 30) {
    for (int x = 0; x <= width; x += 30) {
      rect(x, y, 25, 25);
    }
  }
}

void keyPressed() {
  if (key == 'p') {
  saveFrame("0803a_####.png");
  }
}
