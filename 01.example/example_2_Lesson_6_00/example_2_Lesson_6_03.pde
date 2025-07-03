////力
//PVector force;
////加速度
//PVector acceleration;
////位置
//PVector location;
////速度
//PVector velocity;
////質量
//float mass;
////摩擦力
//float friction;
////重力
//PVector gravity;
////稼働範囲（min）
//PVector min;
////稼働範囲（max）
//PVector max;

//void setup() {
//  size(800, 600);
//  frameRate(60);
//  //位置、速度を初期化
//  location = new PVector(0.0, 0.0);
//  velocity = new PVector(0.0, 0.0);
//  gravity = new PVector(0.0, 1.0);
//  force = new PVector(3.0, 2.0);
//  //稼働範囲を判定
//  min = new PVector(0.0, 0.0);
//  max = new PVector(width, height);
//  mass = 1.0;
//  friction = 0.01;
//  //質量と速度から加速度を算出
//  acceleration = force.mult(mass);
//}

//void draw() {
//  //背景フィード
//  fill(0, 31);
//  rect(0, 0, width, height);
//  fill(255);
//  noStroke();
//  //重力を加える
//  acceleration.add(gravity);
//  //加速度から速度を算出
//  velocity.add(acceleration);
//  //摩擦力から速度を変化
//  velocity.mult(1.0 - friction);
//  //速度から位置を算出
//  location.add(velocity);
//  //加速度を０にリセット（等速運動）する
//  acceleration.set(0, 0);
//  ellipse(location.x, location.y, 20, 20);
//  bounceOffWalls();
//}

//void bounceOffWalls() {
//  if (location.x > max.x) {
//    location.x = max.x;
//    velocity.x *= -1;
//  }
//  if (location.x < min.x) {
//    location.x = min.x;
//    velocity.x *= -1;
//  }
//  if (location.y > max.y) {
//    location.y = max.y;
//    velocity.y *= -1;
//  }
//  if (location.y < min.y) {
//    location.y = min.y;
//    velocity.y *= -1;
//  }
//}
