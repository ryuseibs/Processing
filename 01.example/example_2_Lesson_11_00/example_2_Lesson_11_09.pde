import processing.sound.*;
//サウンド入力
AudioIn in;
//音量解析
Amplitude rms;

void setup() {
  size(800, 600);
  fill(0, 127, 255);
  noStroke();
  //サウンド入力初期化
  in = new AudioIn(this, 0);
  //サウンド入力開始
  in.start();
  //音量解析の初期化
  rms = new Amplitude(this);
  //音量解析の入力設定
  rms.input(in);
}

void draw() {
  background(0);
  //音量の開始て値調整
  float diameter = map(rms.analyze(), 0.0, 1.0, 0.0, width);
  //取得した音量で円を描画
  ellipse(width / 2, height / 2, diameter, diameter);
}
