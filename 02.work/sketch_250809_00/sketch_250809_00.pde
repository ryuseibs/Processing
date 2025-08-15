int x1 = 100, y1 = 30, x2 = 135, y2 = 55, x3 = 350, y3 = 55, x4 = 385, y4 = 30;

void setup() {
  size(500, 500);
  background(0);
}

void draw() {
  noFill();
  stroke(255);
  //7Segmentの最上部
  quad(x1, y1, x2, y2, x3, y3, x4, y4);
}
