//物体の運動を計算（運動方程式）
class ParticleVec2 {
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
  //摩擦力
  float friction;
  //重力
  PVector gravity;
  //稼働範囲（min）
  PVector min;
  //稼働範囲（max）
  PVector max;
  //パーティクルの半径
  float radius;

  //コンストラクタ
  ParticleVec2() {
    radius = 4.0;
    mass = 1.0;
    friction = 0.01;
    //位置、速度を初期化
    location = new PVector(0.0, 0.0);
    velocity = new PVector(0.0, 0.0);
    //質量と速度から加速度を算出
    acceleration = new PVector(0.0, 0.0);
    //重力０
    gravity = new PVector(0.0, 0.0);
    //稼働範囲を判定
    min = new PVector(0.0, 0.0);
    max = new PVector(width, height);
  }

  //運動方程式から位置更新
  void update() {
    //重力を加える
    acceleration.add(gravity);
    //加速度から速度を算出
    velocity.add(acceleration);
    //摩擦力から速度を変化
    velocity.mult(1.0 - friction);
    //速度から位置を算出
    location.add(velocity);
    //加速度を０にリセット（等速運動）する
    acceleration.set(0, 0);
  }

  void draw() {
    ellipse(location.x, location.y, mass * radius * 2, mass * radius * 2);
  }

  //壁にバウンド
  void bounceOffWalls() {
    if (location.x > max.x) {
      location.x = max.x;
      velocity.x *= -1;
    }
    if (location.x < min.x) {
      location.x = min.x;
      velocity.x *= -1;
    }
    if (location.y > max.y) {
      location.y = max.y;
      velocity.y *= -1;
    }
    if (location.y < min.y) {
      location.y = min.y;
      velocity.y *= -1;
    }
  }

  //壁を突き抜けて反対から出現
  void throughWalls() {
    if (location.x < min.x) {
      location.x = max.x;
    }
    if (location.y < min.y) {
      location.y = max.y;
    }
    if (location.x > max.x) {
      location.x = min.x;
    }
    if (location.y > max.y) {
      location.y = min.y;
    }
  }

  //力を加える関数
  void addForce(PVector force) {
    //力と質量から加速度を算出
    force.div(mass);
    //力を加速度を加える
    acceleration.add(force);
  }
}
