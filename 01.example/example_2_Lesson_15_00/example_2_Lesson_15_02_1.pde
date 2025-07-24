import processing.video.*;
import gab.opencv.*;
//OpenCVインスタンス
OpenCV opencv;
//ライブカメラ
Capture video;

int NUM = 2000;
ParticleVec3[] particles = new ParticleVec3[NUM];

void setup() {
  size(640, 480, P3D);
  //キャプチャするカメラサイズ
  video = new Capture(this, 640 / 2, 480 / 2);
  //OpenCVの画面サイズ
  opencv = new OpenCV(this, 640 / 2, 480 / 2);
  video.start();

  //パーティクルを初期化
  for (int i = 0; i < NUM; i++) {
    particles[i] = new ParticleVec3();
    particles[i].radius = 1.5;
    particles[i].position.set(random(width/2), random(height/2));
    particles[i].minx = 0;
    particles[i].miny = 0;
    particles[i].maxx = width / 2;
    particles[i].maxy = height / 2;
  }
}

void draw() {
  background(0);
  blendMode(ADD);
  scale(2);

  opencv.loadImage(video);
  //OpticalFlowを計算
  opencv.calculateOpticalFlow();

  stroke(255, 0, 0);
  opencv.drawOpticalFlow();

  //パーティクル演算
  noStroke();
  fill(0, 127, 255);
  for (int i = 0; i < NUM; i++) {
    particles[i].update();
    particles[i].draw();
    particles[i].throughWalls();
    //パーティクルが画面内の場合
    if (particles[i].position.x > 0 && particles[i].position.x < video.width && particles[i].position.y > 0 && particles[i].position.y < video.height) {
      //パーティクルの場所オプティカルフローのベクトル取得
      PVector vec = opencv.getFlowAt(int (particles[i].position.x), int(particles[i].position.y));
      //取得したベクトルの力をパーティクルに加える
      particles[i].addForce(vec.mult(0.1));
    }
  }
}

//カメラキャプチャのイベント実行
void captureEvent(Capture c) {
  c.read();
}
