//import processing.sound.*;
////サウンドプレイヤー
//SoundFile soundfile;

//void setup() {
//  size(800, 600);
//  //サウンドファイルを読み込んでプレイヤー初期化
//  //ファイル名は読み込んだサウンドファイル名に変更
//  soundfile = new SoundFile(this, "ELEVENPLAY_x_Rhizomatiks_syn_multicam_test_audio.wav");
//  soundfile.loop();
//}

//void draw() {
//  background(0);
//  //マウスのX座標の位置でパン（左右の定位）を変更
//  soundfile.pan(map(mouseX, 0, width, -1.0, 1.0));
//  //マウスのY座標の位置で再生スピードを変更
//  soundfile.rate(map(mouseY, 0, height, 0.25, 4.0));
//  //マウスの位置を交差する線を表示
//  noFill();
//  stroke(255);
//  line(mouseX, 0, mouseX, height);
//  line(0, mouseY, width, mouseY);
//}
