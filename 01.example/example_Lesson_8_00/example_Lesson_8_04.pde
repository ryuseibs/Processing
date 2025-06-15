//Ball[] balls = new Ball[10];

//class Ball {
//  float radi, posx, posy, speedx, speedy;
//  color clr;

//  Ball (float r, float x, float y, color c, float sx, float sy) {
//    radi = r;
//    posx = x;
//    posy = y;
//    clr = c;
//    speedx = sx;
//    speedy = sy;
//  }

//  void move() {
//    posx += speedx;
//    posy += speedy;
//  }

//  void bound() {
//    if (posx + radi > width) {
//      speedx = -speedx;
//      posx = width - radi;
//    }
//    if (posx -radi < 0) {
//      speedx = -speedx;
//      posx =radi;
//    }
//    if (posy + radi > height) {
//      speedy = -speedy;
//      posy = height - radi;
//    }
//    if (posy - radi < 0) {
//      speedy = -speedy;
//      posy = radi;
//    }
//  }

//  void display() {
//    fill(clr);
//    ellipse(posx, posy, radi * 2, radi * 2);
//  }
//}

//void setup() {
//  size(480, 480);
//  noStroke();
//  for (int i =0; i<10; i++) {
//    float r = random(5, 10);
//    float x = random(width);
//    float y = random(height);
//    color c = color(random(255), random(255), random(255));
//    float sx= random(-5, 5);
//    float sy= random(-5, 5);
//    balls[i]= new Ball(r, x, y, c, sx, sy);
//  }
//}

//void draw() {
//  background(128);
//  for (int i = 0; i < 10; i++) {
//  balls[i].display();
//  balls[i].move();
//  balls[i].bound();
//  }
//}

//練習問題８−１
int n = 100;
Clockhands[] a = new Clockhands[n];

void setup() {
  size(600, 600);
  for (int i = 0; i < 0; i++) {
    int l = int(random(5, 100));
    int w = int(random(10, 50));
    float s = radians(random(3));
    int x = int(random(width));
    int y = int(random(height));
    color c = color(random(255), random(255), random(255));
    a[i] = new Clockhands(l, w, s, x, y, c);
  }
}

void draw() {
  fill(0, 100);
  noStroke();
  rect(0, 0, 600, 600);
  for (int i=0; i<n; i++) {
    a[i].update();
    a[i].show();
  }
}

class Clockhands {
  int len;         //針の長さ
  int weight;      //針の太さ
  float angle;     //角度
  float speed;     //回転速度
  int posx, posy;  //中心の位置 x, y
  color clr;       //針の色

  Clockhands(int l, int w, float s, int x, int y, color c) {
    len = l;
    weight = w;
    speed = s;
    posx = x;
    posy = y;
    clr = c;
  }

  void update() {
    angle = angle + speed;
  }

  void show() {
    pushMatrix();
    stroke(clr);
    strokeWeight(weight);
    translate(posx, posy);
    rotate(angle);
    line(0,0,len,0);
    popMatrix();
  }
}
