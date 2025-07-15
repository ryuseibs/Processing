//PImage img;

//void setup() {
//  size(800, 800);
//  img = loadImage("image_2000x2000.jpg");
//  //画像をウィンドウの大きさにリサイズ
//  img.resize(width, height);
//  //背景を一度だけ描画
//  background(0);
//}

//void draw() {
//  noStroke();
//  //毎フレーム40個の円を描く
//  for (int i = 0; i < 40; i++) {
//    //画面からランダムな場所を選択
//    PVector location = new PVector(random(width), random(height));
//    //場所に対応する色を画像から取得した塗りつぶしの色に設定
//    color col = img.get(int(location.x), int(location.y));
//    fill(col, 127);
//    //明るさ（RGBの合計）を計算
//    float brightness = red(col) + green(col) + blue(col);
//    //明るさから円のサイズを設定
//    float diameter = map(brightness, 0, 255*3, 0, 20);
//    //設定した大きさで円を描画
//    ellipse(location.x, location.y, diameter, diameter);
//  }
//}
