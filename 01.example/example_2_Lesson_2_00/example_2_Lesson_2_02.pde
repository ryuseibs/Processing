size(800, 600);
background(0);
noStroke();
int num = 100;

for (int i = 0; i < num; i++) {
  //画面の幅いっぱいに生成した値をX座標にする
  float x = random(0, width);
  //画面の幅いっぱいに生成した値をY座標にする
  float y = random(0, height);
  //生成したランダムな位置と画面の中心との距離を計算する
  float dist = dist(x, y, width / 2, height / 2);

  //距離が高さの半分より小さい場合
  if (dist < height / 2) {
    noStroke();
    fill(63, 127, 255);
  } else {
    //距離が高さの半分よりも小さくなかったら
    noFill();
    stroke(31, 127, 255);
  }
  ellipse(x, y, 10, 10);
}
