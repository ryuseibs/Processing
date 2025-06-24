void setup() {
  size(480, 120);
  frameRate(10);
  fill(0, 10);
}

void draw() {
  ellipse(mouseX, mouseY, 30, 30);
  if (frameCount <= 400) {
  saveFrame("frames/####.tif");
  }
}
