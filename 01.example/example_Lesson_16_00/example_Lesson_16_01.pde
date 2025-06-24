void setup() {
  size(480, 300);
  colorMode(HSB, 360, 100, 100);
  noLoop();
  noStroke();
}

void draw() {
  for (int x = 0; x < width; x++) {
    int H = (int)map(x, 0, width, 0, 360);
    stroke(H, 100, 100);
    line(x, 0, x, height);
  }
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("1002a_####.png");
  }
}
