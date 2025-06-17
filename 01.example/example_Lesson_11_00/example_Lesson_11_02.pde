float x0, y0;

void setup() {
  size(480, 300);
  background(255);
  x0 = 0;
  y0 = 0;
}

void draw() {
  translate(width / 2, height / 2);
  fill(0);
  ellipse(x0, y0, 4, 4);
  float x1 = random(-width / 2, width / 2);
  float y1 = random(-height / 2, height / 2);
  line(x0, y0, x1, y1);
  x0 = x1;
  y0 = y1;
}

void keyPressed() {
  if (key =='p') {
    saveFrame("0503a_####.png");
  }
}
