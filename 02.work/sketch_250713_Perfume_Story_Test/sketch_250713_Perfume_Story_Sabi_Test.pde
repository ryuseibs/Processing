//パーティクルの数
int NUM = 50;
//パーティクルを格納する配列
ParticleVec2[] particles = new ParticleVec2[NUM];

void setup() {
  //P2Dは、OpenGLを使用して高速な２次元を描画
  size(720, 1080);
  frameRate(60);
  textSize(42);
  //パーティクルの初期化
  for (int i = 0; i < NUM; i++) {
    //クラスをインスタンス化
    particles[i]= new ParticleVec2();
    //初期位置は画面の中心とする
    particles[i].location.set(width / 2.0, height / 2.0);
    //ランダムに加速度を設定
    particles[i].acceleration.set(random(-5, 5), random(-5, 5));
    //下向きに0.1の重力
    particles[i].gravity.set(0.0, 0.1);
    //摩擦を0.01
    particles[i].friction = 0.001;
  }
}

void draw() {
  //背景フィード
  fill(0, 31);
  rect(0, 0, width, height);
  noStroke();
  fill(255);
  //パーティクルの位置更新を描画
  for (int i = 0; i < NUM; i++) {
    PVector CenterLoc = new PVector(width / 2, height / 2);
    particles[i].attract(CenterLoc, 200, 5, 20);
    particles[i].update();
    particles[i].draw();
    particles[i].bounceOffWalls();
  }
}
