//配列の数
int NUM = 10000;
//X座標
float[] x = new float[NUM];
//Y座標
float[] y = new float[NUM];

void setup() {
  size(800, 600, P2D);
  frameRate(60);
  background(0);
  for (int i = 0; i < NUM; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
}

void draw() {
  blendMode(ADD);
  stroke(255);
  noFill();
  for (int i = 0; i < NUM; i++) {
    point(x[i], y[i]);
    x[i] = x[i] + random(-1.0, 1.5);
    y[i] = y[i] + random(-0.5, 1.2);
    //画面の端からはみ出さないようにする
    //左端
    if (x[i] < 0) {
      x[i] = width;
    }
    //右端
    if (x[i] > width) {
      x[i]=0;
    }
    //上端
    if (y[i] < 0) {
      y[i] = height;
    }
    //下端
    if (y[i] > height) {
      y[i] = 0;
    }
  }
  //画面をフェード
  blendMode(BLEND);
  noStroke();
  fill(0, 11);
  rect(0, 0, width, height);
}
