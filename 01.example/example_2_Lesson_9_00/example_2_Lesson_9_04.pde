PImage img;

void setup() {
  size(800, 800);
  img = loadImage("image_2000x2000.jpg");
  //フィルタ：ガウスぼかし
  img.resize(width, height);
}

void draw() {
  background(0);
  image(img, 0, 0);

  //マウスポインタの場所を色を取得
  color col = img.get(mouseX, mouseY);
  //取得した色を塗りつぶしの色に指定して円を描画
  fill(col);
  ellipse(50, 50, 80, 80);

  //マウスの場所を線で表示
  line(mouseX, 0, mouseY, height);
  line(0, mouseY, width, mouseY);
}
