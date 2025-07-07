class ParticleVec3 {
  //位置
  PVector location;
  //速度
  PVector velocity;
  //加速度
  PVector acceleration;
  //重力
  PVector gravity;
  //質量
  float mass;
  //摩擦力
  float friction;
  //稼働範囲(min)
  PVector min;
  //稼働範囲(max)
  PVector max;
  //パーティクル半径
  float radius;
  //重力定数
  float G;

  //コンストラクタ
  ParticleVec3() {
    radius = 4.0;
    mass = 1.0;
    friction = 0.0;
    G = 1.0;
    //位置・速度。加速度を初期化
    location = new PVector(0.0, 0.0, 0.0);
    velocity = new PVector(0.0, 0.0, 0.0);
    acceleration = new PVector(0.0, 0.0, 0.0);
    //重力０
    gravity = new PVector(0.0, 0.0, 0.0);
    //稼働範囲を設定
    min = new PVector(0, 0, 0);
    max = new PVector(width, height, height / 2);
  }
  //運動方程式から位置を更新
  void update() {
    //重力を加える
    acceleration.add(gravity);
    //加速度から速度を算出
    velocity.add(acceleration);
    //摩擦力から速度に変化
    velocity.mult(1.0 - friction);
    //速度から位置へ
    location.add(velocity);
    //加速度を0にリセット
    acceleration.set(0, 0, 0);
  }

  void draw() {
    pushMatrix();
    translate(location.x, location.y, location.z);
    ellipse(0, 0, mass * radius * 2, mass * radius * 2);
    popMatrix();
  }

  void addForce(PVector force) {
    //力と質量から加速度を算出
    force.div(mass);
    //力を加速度を加える
    acceleration.add(force);
  }

  //引力を計算
  void attract(PVector center, float _mass, float min, float max) {
    //距離を算出
    float distance = PVector.dist(center, location);
    //距離を指定した範囲内で
    distance = constrain(distance, min, max);
    //引力の強さを算出
    float strength = G * (mass * _mass) / (distance * distance);
    //引力の中心とパーティクル間のベクトル
    PVector force = PVector.sub(center, location);
    //ベクトルを正規化
    force.normalize();
    //ベクトルに力の強さを乗算
    force.mult(strength);
    //力を加える
    addForce(force);
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
    if (location.z > max.z) {
      location.z = max.z;
      velocity.z *= -1;
    }
    if (location.z < min.z) {
      location.z = min.z;
      velocity.z *= -1;
    }
  }

  //壁に突き抜けて反対から出現
  void throughWalls() {
    if (location.x < min.x) {
      location.x = max.x;
    }
    if (location.y < min.y) {
      location.y = max.y;
    }
    if (location.z < min.z) {
      location.z = max.z;
    }
    if (location.x > max.x) {
      location.x = min.x;
    }
    if (location.y > max.y) {
      location.y = min.y;
    }
    if (location.z > min.z) {
      location.z = min.z;
    }
  }
}
