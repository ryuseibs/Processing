float[] Xp = {};
float[] Yp = {};

void setup() {
  size(480, 300);
  background(255);
}

void draw() {
}

void mousePressed() {
  Xp = append(Xp, mouseX);
  Yp = append(Yp, mouseY);
  ellipse(mouseX, mouseY, 4, 4);
  if (Xp.length == 8) {
    amoeba();
    Xp = expand(Xp, 0);
    Yp = expand(Yp, 0);
  }
}

void amoeba() {
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
    saveFrame("0604b_####.png");
  }
}
