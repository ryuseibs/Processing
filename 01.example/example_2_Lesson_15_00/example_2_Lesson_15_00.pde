import processing.video.*;
import gab.opencv.*;
//OpenCVインスタンス
OpenCV opencv;
//ライブカメラ
Capture video;
//輪郭の配列
ArrayList<Contour> contours;

void setup() {
  size(800, 600);
  frameRate(60);
  opencv = new OpenCV(this, 640, 480);
  video = new Capture (this, 640, 480);
  video.start();
}

void draw() {
  opencv.loadImage(video);
  //閾値の設定（マウスのX座標で変化）
  int threshold = int(map(mouseX, 0, width, 0, 100));
  //設定した閾値を適用
  opencv.threshold(threshold);
  //輪郭を抽出
  contours = opencv.findContours();
  noFill();
  strokeWeight(2);
  background(0);
  //検出された輪郭の数だけ輪郭線を描く
  for (int i = 0; i < contours.size(); i++) {
    stroke(255);
    contours.get(i).draw();
  }
}

//カメラキャプチャのイベント実行
void captureEvent(Capture c) {
  c.read();
}
