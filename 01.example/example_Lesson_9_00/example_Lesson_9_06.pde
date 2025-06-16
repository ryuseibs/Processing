void setup() {
  size(480, 300);
  background(255);
}

void draw() {
  float w = random(1, 10);
  strokeWeight(w);
  point(mouseX, mouseY);
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("0306a_####.png");
  }
}
