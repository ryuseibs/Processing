void setup() {
  size(480, 300);
  colorMode(HSB, 360, 100, 100);
  background(0);
  noStroke();
  noLoop();
}

void draw() {
  for (int x = 0; x <= width; x += 120) {
    for (int y = 0; y <= height; y += 100) {
      int H = (int)random(360);
      ball(x, y, 90, H);
    }
  }
}

void ball(int x, int y, int D, int H) {
  for (int d = D; d > 0; d--) {
    float B = map(d, 0, D, 0, 100);
    fill(H, 100, B);
    ellipse(x, y, d, d);
  }
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("1003b_####.png");
  }
}
