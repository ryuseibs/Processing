//import processing.video.*;
//import gab.opencv.*;
////OpenCVインスタンス
//OpenCV opencv;
////ライブカメラ
//Capture video;

//void setup() {
//  size(800, 600, P2D);
//  frameRate(60);
//  opencv = new OpenCV(this, width / 2, height / 2);
//  video = new Capture (this, width / 2, height / 2);
//  video.start();
//}

//void draw() {
//  scale(2);
//  opencv.loadImage(video);
//  //カメラ画像表示
//  image(video, 0, 0);
//  //OpticalFlowを計算
//  opencv.calculateOpticalFlow();
//  //描画設定
//  stroke(255, 0, 0);
//  //OpticalFlowを描画
//  opencv.drawOpticalFlow();
//  //オプティカルフローを平均を解析
//  PVector aveFlow = opencv.getAverageFlow();
//  int flowScale = 50;
//  stroke(0, 0, 255);
//  //オプティカルフローの平均描画
//  line(video.width / 2, video.height / 2, video.width / 2 + aveFlow.x * flowScale, video.height / 2 + aveFlow.y * flowScale);
//}

////カメラキャプチャのイベント実行
//void captureEvent(Capture c) {
//  c.read();
//}
