import processing.sound.*;
//サウンド入力
AudioIn in;
//FFT高速フーリエ変換
FFT fft;
//FFTサイズを設定
int bands = 1024;
//グラフの高さのスケールを設定
float scale = 20.0;

void setup() {
  size(800, 600);
  //サウンド入力初期化
  in = new AudioIn(this, 0);
  //サウンド入力開始
  in.start();
  //FFT初期化
  fft = new FFT(this, bands);
  fft.input(in);
}

void draw() {
  background(0);
  //FFT解析
  fft.analyze();
  float w = width / float(bands);
  noFill();
  stroke(255);
  beginShape();
  //FFTバンドの数だけ繰り返し
  for (int i = 0; i < bands; i++) {
    vertex(i * width / float(bands), height - fft.spectrum[i] * height * scale);
  }
  endShape();
}
