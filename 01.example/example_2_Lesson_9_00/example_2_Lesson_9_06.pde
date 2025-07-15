PImage img;

void setup() {
  size(800, 800);
  img = loadImage("image_2000x2000.jpg");
  //フィルタ：ガウスぼかし
  img.resize(width, height);
}

void draw() {
  background(0);
  //画面の幅(i)だけ繰り返し
  for (int i = 0; i < width; i++) {
    //マウスのY座標の位置のピクセルを取り戻す
    color col = img.get(i, mouseY);
    //取得した色を線の色にする
    stroke(col);
    //縦線を描画
    line(i, 0, i, height);
  }
  //現在のマウスの場所を線で表示
  stroke(255);
  line(0, mouseY, width, mouseY);
}
