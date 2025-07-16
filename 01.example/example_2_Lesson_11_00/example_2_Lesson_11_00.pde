//import processing.video.*;
//Movie movie;
//boolean playing;

//void setup() {
//  size(1080, 720);
//  frameRate(60);
//  background(0);
//  noStroke();
//  movie = new Movie(this, "PERFUME_CLIPS_BONUS_DISC_Title_20.mp4");
//  movie.loop();
//  playing = true;
//}

//void draw() {
//  image(movie, 0, 0, width, height);
//  //現在どこまで再生されているかを表示
//  float percent = movie.time() / movie.duration();
//  //再生された割合からバーの長さを計算
//  float length = map(percent, 0.0, 1.0, 0.0, width);
//  //再生バー表示
//  fill(255, 0, 0);
//  rect(0, height-4, length, 4);
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
