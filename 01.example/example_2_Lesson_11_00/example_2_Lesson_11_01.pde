//import processing.video.*;
//Movie movie;
//boolean playing;

//void setup() {
//  size(1080, 720);
//  frameRate(60);
//  noStroke();
//  movie = new Movie(this, "PERFUME_CLIPS_BONUS_DISC_Title_20.mp4");
//  movie.loop();
//  playing = true;
//}

//void draw() {
//  background(0);
//  //色をピックアップする間隔を設定
//  int skip = 20;
//  //設定した間隔で画面をスキャン
//  for (int j = skip / 2; j < height; j += skip) {
//    for (int i = skip / 2; i < width; i += skip) {
//      //指定した座標に色を読み込む
//      color col = movie.get(i, j);
//      //明るさを抽出
//      float br = brightness(col);
//      //塗りつぶし色を設定
//      fill(col);
//      //明るさをサイズにして円を描く
//      ellipse(i, j, skip * br / 255.0, skip * br / 255.0);
//    }
//  }
//}

////ムービーフレーム更新時にイベント実行
//void movieEvent(Movie m) {
//  // 現在のフレームを読み込む
//  m.read();
//}

////マウスクリックで再生ON・OFF
//void mouseReleased() {
//  if (playing == true) {
//    movie.pause();
//    playing = false;
//  } else {
//    movie.play();
//    playing = true;
//  }
//}
