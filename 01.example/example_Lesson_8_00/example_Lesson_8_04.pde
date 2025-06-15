Ball[] balls = new Ball[10];

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

void setup() {
  size(480, 480);
  noStroke();
  for (int i =0; i<10; i++) {
    float r = random(5, 10);
    float x = random(width);
    float y = random(height);
    color c = color(random(255), random(255), random(255));
    float sx= random(-5, 5);
    float sy= random(-5, 5);
    balls[i]= new Ball(r, x, y, c, sx, sy);
  }
}

void draw() {
  background(128);
  for (int i = 0; i < 10; i++) {
  balls[i].display();
  balls[i].move();
  balls[i].bound();
  }
}
