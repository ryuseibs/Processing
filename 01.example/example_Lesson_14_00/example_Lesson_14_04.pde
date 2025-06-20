//void setup() {
//  size(480, 300);
//  background(0);
//  noLoop();
//  rectMode(CENTER);
//}

//void draw() {
//  for (int y = 0; y <= height; y += 20) {
//    for (int x = 0; x <= width; x += 20) {
//      float dx = random(-2, 2);
//      float dy = random(-2, 2);
//      rect(x + dx, y + dy, 18, 18);
//    }
//  }
//}

//void keyPressed() {
//  if (key == 'p') {
//    saveFrame("0803b_####.png");
//  }
//}

//練習問題１４−１
//void setup() {
//  size(480, 300);
//  background(0);
//  noLoop();
//  rectMode(CENTER);
//}

//void draw() {
//  for (int y = 0; y <= height; y += 20) {
//    for (int x = 0; x <= width; x += 20) {
//      float dx = random(-2, 2);
//      float dy = random(-2, 2);
//      float rx = random(-2, 2);
//      float ry = random(-2, 2);
//      rect(x + dx, y + dy, 18 + rx, 18 + ry);
//    }
//  }
//}

//void keyPressed() {
//  if (key == 'p') {
//    saveFrame("0803b_####_1.png");
//  }
//}

//練習問題１４−２
void setup() {
  size(480, 300);
  background(0);
  noLoop();
  rectMode(CENTER);
}

void draw() {
  for (int y = 0; y <= height; y += 20) {
    for (int x = 0; x <= width; x += 20) {
      float dx = random(-2, 2);
      float dy = random(-2, 2);
      float ds = radians(random(-7.5, 7.5));
      pushMatrix();
      translate(x + dx, y +dy);
      rotate(ds);
      rect(0, 0, 18, 18);
      popMatrix();
    }
  }
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("0803b_####_3.png");
  }
}
