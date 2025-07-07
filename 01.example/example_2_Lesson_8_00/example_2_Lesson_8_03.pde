//パーティクル数
int NUM = 2000;
//パーティクルを格納する配列
ParticleVec3[] particles = new ParticleVec3[NUM];
float noiseScale;
float noiseStrength;

void setup() {
  size(800, 600, P3D);
  frameRate(60);
  noiseScale = 0.01;
  noiseStrength = 0.1;
  //パーティクル初期化
  for (int i = 0; i < NUM; i++) {
    //クラスインスタンス化
    particles[i] = new ParticleVec3();
    //初期位置はランダム
    particles[i].location.set(random(width), random(height), random(height / 2));
    particles[i].min.set(0, 0, 0);
    particles[i].max.set(width, height, width / 2);
    particles[i].gravity.set(0.0, 0.0, 0.0);
    particles[i].radius = 1.0;
    particles[i].friction = 0.1;
  }
  background(255);
}

void draw() {
  noStroke();
  //動きをフェード
  fill(0, 3);
  //パーティクルの位置を更新して描画
  for (int i = 0; i < NUM; i++) {
    //ノイズによる力学場を生成
    PVector force = new PVector();
    force.x = cos(noise(particles[i].location.x * noiseScale,
      particles[i].location.y * noiseScale,
      particles[i].location.z * noiseScale) * PI * 4.0);
    force.y = sin(noise(particles[i].location.x * noiseScale,
      particles[i].location.y * noiseScale,
      particles[i].location.z * noiseScale) * PI * 4.0);
    force.mult(noiseStrength);
    particles[i].addForce(force);
    particles[i].update();
    particles[i].draw();
    particles[i].throughWalls();
  }
}

void mousePressed() {
  noiseSeed(round(random(1000)));
  noiseScale = 0.01;
  for (int i = 0; i < NUM; i++) {
    particles[i].location.set(random(width), random(height), random(height/2));
  }
  background(255);
}
