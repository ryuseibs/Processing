//void setup() {
//  size(800, 600);
//  background(255);
//  stroke(1);
//  int step = 10;
//  float noiseScale = 0.01;
//  //２次元のパーリンノイズの生成
//  for (int j = 0; j < height; j +=step) {
//    for (int i = 0; i < width; i += step) {
//      //ノイズの角度を変換
//      float angle =noise(i * noiseScale, j * noiseScale) * PI * 2.0;
//      //算出した角度で線を描く
//      pushMatrix();
//      translate(i, j);
//      rotate(angle);
//      line(-step/2.0, 0, step/2.0, 0);
//      popMatrix();
//    }
//  }
//}
