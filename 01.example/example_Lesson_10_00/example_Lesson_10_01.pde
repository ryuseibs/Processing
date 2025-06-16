void setup() {
  size(480, 300);
  background(255);
  noLoop();
}

void draw() {
  vLines(40, 40, 440, 260, 60);
}

void vLines(float x0, float y0, float x1, float y1, int n) {
  float dx = (x1 - x0) / n;
  for (int i = 0; i < n; i++) {
    float xs = x0 + dx * i;
    float ys = y0;
    float xe = xs;
    float ye = y1;
    line (xs, ys, xe, ye);
  }
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("0401b_####.png");
  }
}
