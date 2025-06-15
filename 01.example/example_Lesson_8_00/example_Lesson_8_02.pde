Ball[] balls = new Ball[300];

void setup() {
  size(480, 120);
  noStroke();
  for (int i = 0; i < 300; i++) {
    float r = random(5, 10);
    float x = random(width);
    float y = random(height);
    color c = color(random(255), random(255), random(255));
    float s = random(-5, 5);
    balls[i] = new Ball(r, x, y, c, s);
  }
}

void draw() {
  background(204);
  for (int i = 0; i < 300; i++) {
    balls[i].update();
  }
}

class Ball {
  float radi, posx, posy, speedx;
  color clr;

  Ball (float r, float x, float y, color c, float sx) {
    radi = r;
    posx = x;
    posy = y;
    clr = c;
    speedx = sx;
  }

  void update() {
    posx += speedx;
    if (posx + radi > width) {
      speedx = -speedx;
      posx = width - radi;
    }
    if (posx - radi < 0) {
      speedx = -speedx;
      posx = radi;
    }
    fill(clr);
    ellipse(posx, posy, radi * 2, radi * 2);
  }
}
