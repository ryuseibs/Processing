
void draw() {
  background(255);
  for (int i = -2; i < width; i++) {
    float currentX = x + i * spacing[0];
    text(messages[0], currentX, height/2);
  }
  x=x+2;
  if (x > spacing[0]) {
    x = x - spacing[0];
  }
}
