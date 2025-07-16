import processing.video.*;
//カメラ定義
Capture cam;

void setup() {
  size(1080, 720);
  frameRate(60);
  noStroke();
  //カメラ定義初期化
  cam = new Capture(this);
  //カメラによるキャプチャ開始
  cam.start();
}

void draw() {
  background(0);
  image(cam, 0, 0, width, height);
}

//カメラのフレームが更新されたらイベント実行
void captureEvent(Capture c) {
  cam.read();
}
