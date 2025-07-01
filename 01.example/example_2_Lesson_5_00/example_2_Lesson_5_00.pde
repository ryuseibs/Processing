////パーティクルの数
//int NUM = 1000;
////Particleクラスの配列
//Particle[] myParticle = new Particle[NUM];

//void setup() {
//  size(800, 600, P2D);
//  frameRate(60);
//  blendMode(ADD);
//  noStroke();

//  for (int i = 0; i < NUM; i++) {
//    //Particleオブジェクトを生成して配列に格納
//    //直径を乱数で指定する（最小８、最大３２ピクセル）
//    myParticle[i] = new Particle(random(8, 32));
//  }
//}

//void draw() {
//  background(0);
//  for (int i = 0; i < NUM; i++) {
//    //Particleクラスのdraw()メソッドを実行
//    myParticle[i].draw();
//  }
//}

////Particleクラス
//class Particle {
//  color col;
//  float diameter;
//  PVector location;
//  PVector velocity;

//  Particle(float _diameter) {
//    //大きさの初期設定
//    diameter = _diameter;
//    //位置ベクトルの初期設定
//    location = new PVector(random(0, width), random(0, height));
//    //速度ベクトルの初期設定
//    velocity = new PVector(random(-4, 4), random(-4, 4));
//    //色の初期設定
//    col = color(random(255), random(255), random(255));
//  }

//  void draw() {
//    fill(col);
//    ellipse(location.x, location.y, diameter, diameter);
//    //位置ベクトルに速度ベクトルを加算、次の位置になる
//    location.add(velocity);
//    //画面の左右端に到達した場合、反転させる
//    if ((location.x < 0) || (location.x > width)) {
//      //X方向のスピードを反転
//      velocity.x = velocity.x * -1;
//    }
//    //画面の上下端に到達した場合、反転させる
//    if ((location.y < 0) || (location.y > height)) {
//      //Y方向のスピードを反転
//      velocity.y = velocity.y * -1;
//    }
//  }
//}
