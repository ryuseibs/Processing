//位置ベクトル
PVector location;
//速度ベクトル
PVector velocity;

void setup() {
  size(800, 600, P2D);
  frameRate(60);
  noStroke();
  //位置ベクトルの初期設定
  location = new PVector(random(width), random(height));
  //速度ベクトルの初期設定
  velocity = new PVector(random(-4, 4), random(-4, 4));
}

void draw() {
  background(0);
  fill(255);
  ellipse(location.x, location.y, 20, 20);

  //位置ベクトルに速度のベクトルを加算する
  //次のフレームの位置になる
  location.add(velocity);

  //画面の端でバウンド
  //画面の左右端に到達した場合、反転させる
  if ((location.x < 0) || (location.x > width)) {
    //X方向のスピードを反転
    velocity.x = velocity.x * -1;
  }
  //画面の上下端に到達した場合、反転させる
  if ((location.y < 0) || (location.y > height)) {
    //Y方向のスピードを反転
    velocity.y = velocity.y * -1;
  }
}
