////配列の数
//int NUM = 10000;

////X座標
//float[] x = new float[NUM];
////Y座標
//float[] y = new float[NUM];

//void setup() {
//  size(800, 600, P2D);
//  frameRate(60);
//  background(0);
//  //配列の数だけ繰り返し
//  for (int i = 0; i < NUM; i++) {
//    x[i] = width / 2.0;
//    y[i] = height / 2.0;
//  }
//}

//void draw() {
//  stroke(255);
//  noFill();
//  //色を加算で混ぜていく
//  blendMode(ADD);
//  //配列の繰り返し
//  for (int i = 0; i < NUM; i++) {
//    point(x[i], y[i]);
//    x[i] = x[i] + random(-2.0, 2.0);
//    y[i] = y[i] + random(-2.0, 2.0);
//  }
//  //画面をフェード（フェードとは色あせたり、弱まったり、消えたりする様子を表す）
//  blendMode(BLEND);
//  fill(0, 5);
//  noStroke();
//  rect(0, 0, width, height);
//}
