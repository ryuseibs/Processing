import processing.sound.*;
//サウンド入力　※AudioIn in（PC内臓マイクだと音が拾えにくく可視化できていないため、WAV音源に切り替え）※
//AudioIn in;
SoundFile soundfile;
//FFT高速フーリエ変換
FFT fft;
//FFTサイズを設定
int bands = 128;
//グラフの高さのスケールを設定
float scale = 1000.0;

void setup() {
  size(800, 600, P2D);
  noStroke();
  blendMode(ADD);
  soundfile = new SoundFile(this, "ELEVENPLAY_x_Rhizomatiks_syn_multicam_test_audio.wav");
  soundfile.loop();
  fft = new FFT(this, bands);
  fft.input(soundfile);
}

void draw() {
  background(0);
  fft.analyze();
  float w = width / float(bands) / 2.0;
  //FFTのバンドの数だけ繰り返し
  for (int i = 0; i < bands; i++) {
    fill(8);
    //円の直径をFFT解析結果で算出
    float diameter = fft.spectrum[i] * scale;
    //左右に円を描く
    ellipse(width / 2.0 + i * w, height / 2.0, diameter, diameter);
    ellipse(width / 2.0 + i * w, height / 2.0, diameter, diameter);
  }
}
