//import processing.video.*;
////カメラ定義
//Capture cam;

//void setup() {
//  size(1080, 720);
//  frameRate(60);
//  noStroke();
//  //カメラ定義初期化
//  cam = new Capture(this);
//  //カメラによるキャプチャ開始
//  cam.start();
//}

//void draw() {
//  background(0);
//  //色をピックアップする間隔を設定
//  int skip = 20;
//  //設定した間隔で画面をスキャン
//  for (int j = skip / 2; j < height; j += skip) {
//    for (int i = skip / 2; i < width; i += skip) {
//      //指定した座標に色を読み込む
//      color col = cam.get(i, j);
//      //明るさを抽出
//      float br = brightness(col);
//      //塗りつぶし色を設定
//      fill(col);
//      //明るさをサイズにして円を描く
//      ellipse(i, j, skip * br / 255.0, skip * br / 255.0);
//    }
//  }
//}

////カメラのフレームが更新されたらイベント実行
//void captureEvent(Capture c) {
//  cam.read();
//}
