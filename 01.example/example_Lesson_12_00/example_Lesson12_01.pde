//void setup() {
//  size(480, 300);
//  background(255);
//  frameRate(10);
//}

//void draw() {
//}

//void myArc2(float x, float y, float R) {
//  strokeWeight(2);
//  noFill();
//  float r  = random(R);
//  float t0 = radians(random(0, 360));
//  float t1 = t0 + radians(random(90, 180));
//  arc(x, y, r * 2, r * 2, t0, t1);
//  ellipse(x + r * cos(t0), y + r * sin(t0), 6, 6);
//  ellipse(x + r * cos(t1), y + r * sin(t1), 6, 6);
//}

//void mousePressed() {
//  myArc2(mouseX, mouseY, 100);
//}

//void keyPressed() {
//  if (key =='p') {
//    saveFrame("0601b_####.png");
//  }
//}

//練習問題１２−１
void setup() {
  size(480, 300);
  background(255);
  frameRate(10);
}

void draw() {
}

void myArc2(float x, float y, float R) {
  strokeWeight(2);
  fill(0, 255, 0, 64);
  float r  = random(R);
  float t0 = radians(random(0, 360));
  float t1 = t0 + radians(random(90, 180));
  arc(x, y, r * 2, r * 2, t0, t1);
  ellipse(x + r * cos(t0), y + r * sin(t0), 6, 6);
  ellipse(x + r * cos(t1), y + r * sin(t1), 6, 6);
}

void mousePressed() {
  myArc2(mouseX, mouseY, 100);
}

void keyPressed() {
  if (key =='p') {
    saveFrame("0601b_####.png");
  }
}
