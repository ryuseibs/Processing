//import processing.sound.*;
////サウンド入力　※AudioIn in（PC内臓マイクだと音が拾えにくく可視化できていないため、WAV音源に切り替え）※
////AudioIn in;
//SoundFile soundfile;
////FFT高速フーリエ変換
//FFT fft;
////FFTサイズを設定
//int bands = 128;
////グラフの高さのスケールを設定
//float scale = 5000.0;

//void setup() {
//  size(800, 600);
//  noStroke();
//  soundfile = new SoundFile(this, "ELEVENPLAY_x_Rhizomatiks_syn_multicam_test_audio.wav");
//  soundfile.loop();
//  fft = new FFT(this, bands);
//  fft.input(soundfile);
//}

//void draw() {
//  background(0);
//  fft.analyze();
//  float w = width / float(bands) / 2.0;
//  //FFTのバンドの数だけ繰り返し
//  for (int i = 0; i < bands; i++) {
//    //左右に四角形を描画
//    rect(width / 2.0 + i * w, 0, w, height);
//    rect(width / 2.0 - i * w, 0, w, height);
//  }
//}
