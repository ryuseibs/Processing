////※※※当ソースはPCスペック制約により確認不可※※※
//import processing.video.*;
//import processing.sound.*;
////カメラ定義
//Capture cam;
////サウンド入力　※AudioIn in（PC内臓マイクだと音が拾えにくく可視化できていないため、WAV音源に切り替え）※
////AudioIn in;
//SoundFile soundfile;
////FFT高速フーリエ変換
//FFT fft;
////FFTサイズを設定
//int bands = 64;
////変化の全体スケール
//float scale = 20.0;

//public void setup() {
//  size(800, 600, P3D);
//  frameRate(60);
//  noFill();
//  blendMode(ADD);
//  //ビデオキャプチャ初期化
//  cam = new Capture(this, width, height);
//  cam.start();
//  soundfile = new SoundFile(this, "ELEVENPLAY_x_Rhizomatiks_syn_multicam_test_audio.wav");
//  soundfile.loop();
//  fft = new FFT(this, bands);
//  fft.input(soundfile);
//}

//public void draw() {
//  background(0);
//  fft.analyze();
//  strokeWeight(2.0);
//  //ビデオ解析の粒度を設定
//  float hStep = height / float(bands) / 2.0;
//  float wStep = 4.0;
//  //FFT周波数帯域用カウンター
//  int n = 0;
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
//  //次の周波数帯域
//  n++;
//}

////カメラフレームが更新されたらイベント実行
//void captureEvent(Capture c) {
//  c.read();
//}
