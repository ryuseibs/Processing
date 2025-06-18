float[] Xp = {240, 400, 320, 400, 240, 80, 160, 80};
float[] Yp = {100, 50, 150, 250, 200, 250, 150, 50};

void setup() {
  size(480, 300);
  background(255);
  noLoop();
  for (int i = 0; i < 8; i++) {
    ellipse(Xp[i], Yp[i], 6, 6);
  }
}

void draw() {
  noFill();
  curve(Xp[7], Yp[7], Xp[0], Yp[0], Xp[1], Yp[1], Xp[2], Yp[2]);
  curve(Xp[0], Yp[0], Xp[1], Yp[1], Xp[2], Yp[2], Xp[3], Yp[3]);
  curve(Xp[1], Yp[1], Xp[2], Yp[2], Xp[3], Yp[3], Xp[4], Yp[4]);
  curve(Xp[2], Yp[2], Xp[3], Yp[3], Xp[4], Yp[4], Xp[5], Yp[5]);
  curve(Xp[3], Yp[3], Xp[4], Yp[4], Xp[5], Yp[5], Xp[6], Yp[6]);
  curve(Xp[4], Yp[4], Xp[5], Yp[5], Xp[6], Yp[6], Xp[7], Yp[7]);
  curve(Xp[5], Yp[5], Xp[6], Yp[6], Xp[7], Yp[7], Xp[0], Yp[0]);
  curve(Xp[6], Yp[6], Xp[7], Yp[7], Xp[0], Yp[0], Xp[1], Yp[1]);
}

void keyPressed() {
  if (key =='p') {
    saveFrame("0604a_####.png");
  }
}
