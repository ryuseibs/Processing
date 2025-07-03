//example_2_Lesson_6_04にて運動の法則を定義してクラス化したものをここで再利用

//パーティクルの数
int NUM = 1000;
//パーティクルを格納する配列
ParticleVec2[] particles = new ParticleVec2[NUM];

void setup() {
  //P2Dは、OpenGLを使用して高速な２次元を描画
  size(800, 600, P2D);
  frameRate(60);
  //パーティクルの初期化
  for (int i = 0; i < NUM; i++) {
    //クラスをインスタンス化
    particles[i]= new ParticleVec2();
    //初期位置は画面の中心とする
    particles[i].location.set(width / 2.0, height / 2.0);
    //ランダムに加速度を設定
    particles[i].acceleration.set(random(-10, 10), random(-10, 10));
    //下向きに0.1の重力
    particles[i].gravity.set(0.0, 0.1);
    //摩擦を0.01
    particles[i].friction = 0.01;
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
    particles[i].update();
    particles[i].draw();
    particles[i].bounceOffWalls();
  }
}
