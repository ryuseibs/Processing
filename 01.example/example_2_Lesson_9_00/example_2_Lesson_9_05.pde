//PImage img;

//void setup() {
//  size(800, 800);
//  img = loadImage("image_2000x2000.jpg");
//  //画像をウィンドウの大きさにリサイズ
//  img.resize(width, height);
//}

//void draw() {
//  background(0);
//  noStroke();
//  //マウスの位置で何ピクセルずつスキャンするか変化
//  int step = int(map(mouseX, 0, width, 1, 100));
//  //画面の行(i)を列(j)の数だけ画像のピクセルをスキャン
//  for (int j = 0; j < height; j +=step) {
//    for (int i = 0; i < width; i +=step) {
//      //指定した場所を色を取得
//      color col = img.get(i, j);
//      //色を指定して四角形を描く
//      fill(col);
//      rect(i, j, step, step);
//    }
//  }
//}
