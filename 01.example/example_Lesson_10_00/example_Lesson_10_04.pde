//void setup() {
//  size(480, 300);
//  background(255);
//}

//void draw() {
//}

//void hatching(float x0, float y0, float w, float h) {
//  float xs = x0;
//  float ys = y0;
//  float xe = x0 + w;
//  float ye = y0 + h;
//  float dx = w / 10;
//  float dy = h / 10;
//  line(xs, ys, xe, ye);
//  for (int i = 0; i < 9; i++) {
//    xs = xs + dx;
//    ye = ye - dy;
//    line(xs, ys, xe, ye);
//  }
//  xs = x0;
//  ys = y0;
//  xe = x0 + w;
//  ye = y0 + h;
//  for (int i = 0; i < 9; i++) {
//    ys = ys + dy;
//    xe = xe - dx;
//    line(xs, ys, xe, ye);
//  }
//}

//void mousePressed() {
//  hatching(mouseX, mouseY, 100, 100);
//}

//void keyPressed() {
//  if (key == 'p') {
//    saveFrame("0404a_####.png");
//  }
//}
