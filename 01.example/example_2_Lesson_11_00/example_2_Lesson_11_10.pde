//import processing.sound.*;
////サウンド入力　※AudioIn in（PC内臓マイクだと音が拾えにくく可視化できていないため、WAV音源に切り替え）※
////AudioIn in;
//SoundFile soundfile;
////FFT高速フーリエ変換
//FFT fft;
////FFTサイズを設定
//int bands = 1024;
////グラフの高さのスケールを設定
//float scale = 20.0;

//void setup() {
//  size(800, 600);
//  soundfile = new SoundFile(this, "ELEVENPLAY_x_Rhizomatiks_syn_multicam_test_audio.wav");
//  soundfile.loop();
//  //FFT初期化
//  fft = new FFT(this, bands);
//  fft.input(soundfile);
//}

//void draw() {
//  background(0);
//  //FFT解析
//  fft.analyze();
//  float w = width / float(bands);
//  noFill();
//  stroke(255);
//  beginShape();
//  //FFTバンドの数だけ繰り返し
//  for (int i = 0; i < bands; i++) {
//    vertex(i * width / float(bands), height - fft.spectrum[i] * height * scale);
//  }
//  endShape();
//}
