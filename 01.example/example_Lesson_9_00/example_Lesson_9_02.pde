//void setup() {
//  size(480, 300);
//  background(255);
//  strokeWeight(2);
//  noLoop();
//}

//void draw() {
//  for (int x = 0; x <= width; x = x + 10) {
//  point(x,150);
//  }
//}

//void keyPressed() {
//  if (key == 'p') {
//  saveFrame("0301a_####.png");
//  }
//}

//練習問題９−４
void setup() {
  size(480, 300);
  background(255);
  strokeWeight(2);
  noLoop();
}

void draw() {
  for (int y = 0; y <= height; y = y + 10) {
    point(240, y);
  }
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("0301a_####_2.png");
  }
}
