int n = 100;
Life[] a = new Life[n];

void setup() {
  size(480, 300);
  for (int i = 0; i < n; i++) {
    float x = random(width);
    float y = random(height);
    float r = random(30);
    float R = random(100);
    float s = random(-0.0, 0.01);
    a[i] = new Life(x, y, r, R, s);
  }
}

void draw() {
  fill(128, 10);
  rect(0, 0, width, height);
  for (int i = 0; i < n; i++) {
    a[i].show();
    a[i].move();
  }
}

class Life {
  float x0, y0, x1, y1;
  float ra;
  float Ra;
  float sp;
  float t;

  Life(float x0_, float y0_, float ra_, float Ra_, float sp_) {
    x0 = x0_;
    y0 = y0_;
    ra = ra_;
    sp = sp_;
    Ra = Ra_;
    x1 = x0 + Ra * cos(t);
    y1 = y0 + Ra * sin(t);
  }

  void show() {
    noStroke();
    fill(255);
    ellipse(x1, y1, ra, ra);
  }

  void move() {
    t = t + sp;
    x1 = x0 + Ra * cos(t);
    y1 = y0 + Ra * sin(t);
  }
}

  void keyPressed() {
    if (key == 'p') {
      saveFrame("0902b_XXXX.png");
    }
  }
