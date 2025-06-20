void setup() {
  size(480, 300);
  background(255);
  noFill();
  rectMode(CENTER);
}

void draw() {
  float x = random(width);
  float y = random(height);
  rect(x, y, 50, 100);
}

void keyPressed() {
  if (key == 'p') {
  saveFrame("0801a_####.png");
  }
}
