//力
PVector force;
//加速度
PVector acceleration;
//位置
PVector location;
//速度
PVector velocity;
//質量
float mass;

void setup() {
  size(800, 600);
  frameRate(60);
  //位置、速度を初期化
  location = new PVector(0.0, 0.0);
  velocity = new PVector(0.0, 0.0);
  force = new PVector(3.0, 2.0);
  mass = 1.0;
  //質量と速度から加速度を算出
  acceleration = force.mult(mass);
}

void draw() {
  //背景フィード
  fill(0, 31);
  rect(0, 0, width, height);
  fill(255);
  noStroke();
  //加速度から速度を算出
  velocity.add(acceleration);
  //速度から位置を算出
  location.add(velocity);
  //加速度を０にリセット（等速運動）する
  acceleration.set(0, 0);
  ellipse(location.x, location.y, 20, 20);
}
