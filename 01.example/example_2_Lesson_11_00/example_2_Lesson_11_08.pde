import processing.sound.*;
//サウンドプレイヤー
SoundFile soundfile;
//音量解析
Amplitude rms;

void setup() {
  size(800, 600);
  fill(0, 127, 255);
  noStroke();
  //サウンドファイルを読み込んでプレイヤー初期化
  //ファイル名は読み込んだサウンドファイル名に変更
  soundfile = new SoundFile(this, "ELEVENPLAY_x_Rhizomatiks_syn_multicam_test_audio.wav");
  soundfile.loop();
  //音量解析の初期化
  rms = new Amplitude(this);
  //音量解析の入力設定
  rms.input(soundfile);
}

void draw() {
  background(0);
  //音量の開始て値調整
  float diameter = map(rms.analyze(), 0.0, 1.0, 0.0, width);
  //取得した音量で円を描画
  ellipse(width / 2, height / 2, diameter, diameter);
}
