//void setup() {
//  size(480, 300);
//  background(255);
//  noLoop();
//}

//void draw() {
//  shakeLine(50, 50, 430, 250, 10, 100);
//  shakeLine(50, 50, 430, 250, 10, 100);
//  shakeLine(50, 250, 430, 50, 10, 100);
//  shakeLine(50, 250, 430, 50, 10, 100);
//}

//void shakeLine(float x0, float y0, float x1, float y1, float b, int n) {
//  float dx = (x1 - x0) / n;
//  float dy = (y1 - y0) / n;
//  float xa = x0;
//  float ya = y0;
//  for (int i = 0; i <= n; i++) {
//    float u = random(-b, b);
//    float v = random(-b, b);
//    float xb = x0 + dx * i + u;
//    float yb = y0 + dy * i + v;
//    line(xa, ya, xb, yb);
//    xa = xb;
//    ya = yb;
//  }
//}

//void keyPressed() {
//  if (key == 'p') {
//    saveFrame("0404a_####.png");
//  }
//}

//練習問題１０−４
void setup() {
  size(480, 300);
  background(255);
  noLoop();
}

void draw() {
  shakeLine(50, 50, 250, 50, 10, 100);
  shakeLine(250, 50, 250, 150, 10, 100);
  shakeLine(250, 150, 50, 150, 10, 100);
  shakeLine(50, 150, 50, 50, 10, 100);
}

void shakeLine(float x0, float y0, float x1, float y1, float b, int n) {
  float dx = (x1 - x0) / n;
  float dy = (y1 - y0) / n;
  float xa = x0;
  float ya = y0;
  for (int i = 0; i <= n; i++) {
    float u = random(-b, b);
    float v = random(-b, b);
    float xb = x0 + dx * i + u;
    float yb = y0 + dy * i + v;
    line(xa, ya, xb, yb);
    xa = xb;
    ya = yb;
  }
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("0404a_####_1.png");
  }
}
