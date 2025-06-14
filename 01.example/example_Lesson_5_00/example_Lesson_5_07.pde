//size(480, 120);
//strokeWeight(10);
//for (int y = 0; y <= 120; y = y+40) {
//  for (int x = 0; x <= 480; x = x+60) {
//    ellipse(x, y, 20, 20);
//  }
//}

//練習問題５−４
//size(600, 150);
//for (int x = 0; x <= width; x = x+30) {
//  ellipse(x, 75, 20, 20);
//}

//練習問題５−５
//size(600, 300);
//for (int y = 0; y <= height; y = y+20) {
//  for (int x = 0; x <= width; x = x+30) {
//    ellipse(x, y, 20, 20);
//  }
//}

//練習問題５−６ ※理解できていない問題※
int[] box = new int[30]; //要素数を30個作る
int i;
for ( i = 0; i < 30; i += i+1) {
  box[i] = i*3;
}
println(box[25]);
