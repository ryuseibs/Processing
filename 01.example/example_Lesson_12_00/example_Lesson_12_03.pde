//float[] Xp = {32, 80, 128, 200, 240, 272, 320, 368, 448};
//float[] Yp = {120, 160, 105, 180, 100, 165, 100, 180, 120};

//void setup() {
//  size(480, 300);
//  background(255);
//  noLoop();
//  for (int i = 0; i < 9; i++) {
//    ellipse(Xp[i], Yp[i], 8, 8);
//  }
//}

//void draw() {
//  noFill();
//  curve(Xp[0], Yp[0], Xp[0], Yp[0], Xp[1], Yp[1], Xp[2], Yp[2]);
//  curve(Xp[0], Yp[0], Xp[1], Yp[1], Xp[2], Yp[2], Xp[3], Yp[3]);
//  curve(Xp[1], Yp[1], Xp[2], Yp[2], Xp[3], Yp[3], Xp[4], Yp[4]);
//  curve(Xp[2], Yp[2], Xp[3], Yp[3], Xp[4], Yp[4], Xp[5], Yp[5]);
//  curve(Xp[3], Yp[3], Xp[4], Yp[4], Xp[5], Yp[5], Xp[6], Yp[6]);
//  curve(Xp[4], Yp[4], Xp[5], Yp[5], Xp[6], Yp[6], Xp[7], Yp[7]);
//  curve(Xp[5], Yp[5], Xp[6], Yp[6], Xp[7], Yp[7], Xp[8], Yp[8]);
//  curve(Xp[6], Yp[6], Xp[7], Yp[7], Xp[8], Yp[8], Xp[8], Yp[8]);
//}

//void keyPressed() {
//  if (key =='p') {
//    saveFrame("0603a_####.png");
//  }
//}

//練習問題１２−３
float[] Xp = {32, 80, 128, 200, 240, 272, 320, 368, 448, 475};
float[] Yp = {120, 160, 105, 180, 100, 165, 100, 180, 120, 150};

void setup() {
  size(480, 300);
  background(255);
  noLoop();
  for (int i = 0; i < 10; i++) {
    ellipse(Xp[i], Yp[i], 8, 8);
  }
}

void draw() {
  noFill();
  curve(Xp[0], Yp[0], Xp[0], Yp[0], Xp[1], Yp[1], Xp[2], Yp[2]);
  curve(Xp[0], Yp[0], Xp[1], Yp[1], Xp[2], Yp[2], Xp[3], Yp[3]);
  curve(Xp[1], Yp[1], Xp[2], Yp[2], Xp[3], Yp[3], Xp[4], Yp[4]);
  curve(Xp[2], Yp[2], Xp[3], Yp[3], Xp[4], Yp[4], Xp[5], Yp[5]);
  curve(Xp[3], Yp[3], Xp[4], Yp[4], Xp[5], Yp[5], Xp[6], Yp[6]);
  curve(Xp[4], Yp[4], Xp[5], Yp[5], Xp[6], Yp[6], Xp[7], Yp[7]);
  curve(Xp[5], Yp[5], Xp[6], Yp[6], Xp[7], Yp[7], Xp[8], Yp[8]);
  curve(Xp[6], Yp[6], Xp[7], Yp[7], Xp[8], Yp[8], Xp[8], Yp[8]);
  curve(Xp[7], Yp[7], Xp[8], Yp[8], Xp[9], Yp[9], Xp[9], Yp[9]);
}

void keyPressed() {
  if (key =='p') {
    saveFrame("0603a_####_1.png");
  }
}
