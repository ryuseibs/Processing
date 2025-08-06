//Ball b1, b2;

//void setup() {
//  size(480, 120);
//  noStroke();
//  b1 = new Ball(20, 240, 60, 255, 4);
//  b2 = new Ball(10, 100, 100, 0, -6);
//}

//void draw() {
//  background(128);
//  b1.update();
//  b2.update();
//}

//class Ball {
//  float radi, posx, posy, speedx;
//  color clr;

//  Ball(float r, float x, float y, color c, float sx) {
//    radi = r;
//    posx = x;
//    posy = y;
//    clr  = c;
//    speedx = sx;
//  }

//  void update() {
//    posx += speedx;
//    if (posx + radi > width) {
//      speedx = -speedx;
//      posx = width - radi;
//    }
//    if (posx - radi < 0) {
//      speedx = -speedx;
//      posx = radi;
//    }
//    fill(clr);
//    ellipse(posx, posy, radi * 2, radi * 2);
//  }
//}
