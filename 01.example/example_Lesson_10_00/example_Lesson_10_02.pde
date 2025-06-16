void setup() {
  size(480, 300);
  background(255);
  noLoop();
}

void draw() {
  hLines(40, 40, 440, 260, 60);
}

void hLines(float x0, float y0, float x1, float y1, int n) {
  float dy = (y1 - y0) / n;
  for (int i = 0; i < n; i++) {
    float xs = x0;
    float ys = y0 + dy * i;
    float xe = x1;
    float ye = ys;
    line (xs, ys, xe, ye);
  }
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("0402a_####.png");
  }
}
