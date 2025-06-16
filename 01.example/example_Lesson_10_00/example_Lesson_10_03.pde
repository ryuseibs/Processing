//void setup() {
//  size(480, 300);
//  background(255);
//  noLoop();
//}

//void draw() {
//  translate(240, 150);
//  hLines(-190, -100, 190, 100, 20);
//  rotate(radians(7.5));
//  hLines(-190, -100, 190, 100, 20);
//}

//void hLines(float x0, float y0, float x1, float y1, int n) {
//  float dy = (y1 - y0) / n;
//  for (int i=0; i<=n; i++) {
//    float xs = x0;
//    float ys = y0 + i * dy;
//    float xe = x1;
//    float ye = ys;
//    line(xs, ys, xe, ye);
//  }
//}

//void keyPressed() {
//  if (key == 'p') {
//    saveFrame("0402a_####.png");
//  }
//}

//練習問題１０−３ ※要確認
void setup() {
  size(480, 300);
  background(255);
  noLoop();
}

void draw() {
  translate(240, 150);
  hLines2(-190, -100, 190, 100, 20, 0);
  hLines2(-190, -100, 190, 100, 20, 30);
}

void hLines2(float x0, float y0, float x1, float y1, int n, float f) {
  float dy = (y1 - y0) / n;
  pushMatrix();       //※要確認
  rotate(radians(f)); //※要確認
  for (int i=0; i<=n; i++) {
    float xs = x0;
    float ys = y0 + i * dy;
    float xe = x1;
    float ye = ys;
    line(xs, ys, xe, ye);
  }
  popMatrix();        //※要確認
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("1003_####_1.png");
  }
}
