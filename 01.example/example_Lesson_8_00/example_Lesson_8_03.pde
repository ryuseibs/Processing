class Ball {
  float radi, posx, posy, speedx, speedy;
  color clr;

  Ball (float r, float x, float y, color c, float sx, float sy) {
    radi = r;
    posx = x;
    posy = y;
    clr = c;
    speedx = sx;
    speedy = sy;
  }

  void move() {
    posx += speedx;
    posy += speedy;
  }

  void bound() {
    if (posx + radi > width) {
      speedx = -speedx;
      posx = width - radi;
    }
    if (posx -radi < 0) {
      speedx = -speedx;
      posx =radi;
    }
    if (posy + radi > height) {
      speedy = -speedy;
      posy = height - radi;
    }
    if (posy - radi < 0) {
      speedy = -speedy;
      posy = radi;
    }
  }

  void display() {
    fill(clr);
    ellipse(posx, posy, radi * 2, radi * 2);
  }
}
