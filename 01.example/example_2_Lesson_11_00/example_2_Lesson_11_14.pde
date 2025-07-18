//※※※当ソースはPCスペック制約により確認不可※※※
//import processing.video.*;
////カメラ定義
//Capture cam;
////変化の全体スケール
//float scale = 1.0;

//public void setup() {
//  size(800, 600, P3D);
//  frameRate(60);
//  blendMode(ADD);
//  noFill();
//  //ビデオキャプチャ初期化
//  cam = new Capture(this, width, height);
//  cam.start();
//}

//public void draw() {
//  background(0);
//  strokeWeight(2.0);
//  //ビデオ解析の粒度を設定
//  float hStep = 16.0;
//  float wStep = 16.0;
//  //映像解析
//  for (float j = 0; j < height; j += hStep) {
//    //線の描画開始
//    beginShape();
//    for (float i = 0; i < width; i += wStep) {
//      //色取得
//      color col = cam.get(int(i), int(j));
//      //明度を算出
//      float br = brightness(col);
//      stroke(col);
//      //明るさとFFT解析の結果から高さを決定して頂点追加
//      vertex(i, j, br * scale);
//    }
//    //線の描画終了
//    endShape();
//  }
//}

////カメラフレームが更新されたらイベント実行
//void captureEvent(Capture c) {
//  c.read();
//}
