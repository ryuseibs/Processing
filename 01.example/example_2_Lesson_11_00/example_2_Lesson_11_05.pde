import processing.video.*;
//カメラ定義
Capture cam;
//スキャンしている場所（高さ）
float scanHeight;
//スキャンの移動スピード
float scanSpeed;

void setup() {
  size(1080, 720);
  frameRate(60);
  noStroke();
  //カメラ定義初期化
  cam = new Capture(this);
  //カメラによるキャプチャ開始
  cam.start();
  //スキャン位置とスピードの初期化
  scanHeight = 2.0;
  scanSpeed = 2.0;
  background(0);
}

void draw() {
  //指定した高さの横１行だけスキャン
  for (int i = 0; i < width; i++) {
    //指定した座標の色を読み込み
    color col = cam.get(i, int(scanHeight));
    fill(col);
    rect(i, scanHeight, 1, scanSpeed);
  }
  //スキャンする場所が下端まできたら0にリセット
  if (scanHeight > height) {
    scanHeight = 0;
  }
}

//カメラのフレームが更新されたらイベント実行
void captureEvent(Capture c) {
  cam.read();
  //指定した速さでスキャンの高さを移動
  scanHeight += scanSpeed;
}
