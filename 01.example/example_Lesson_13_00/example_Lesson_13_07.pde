void setup() {
  size(480, 300);
}

void draw() {
}

void caterpillar(float x, float y, float d) {
  noStroke();
  fill(255, 100);
  for (int i = 0; i < 100; i++) {
    ellipse(x, y, d, d);
    float t = radians(random(360));
    x = x + d * cos(t);
    y = y + d * sin(t);
  }
}

void mousePressed() {
  caterpillar(mouseX, mouseY, 20);
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("0705c_####.png");
  }
}
