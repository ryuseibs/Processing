import processing.sound.*;
//サウンドプレイヤー
SoundFile soundfile;

void setup() {
  size(800, 600);
  //サウンドファイルを読み込んでプレイヤー初期化
  //ファイル名は読み込んだサウンドファイル名に変更
  soundfile = new SoundFile(this, "08_Mugen_Loop_Processing_test.wav");
  soundfile.loop();
}

void draw() {
  background(0);
}
