//角度初期化
float angle = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);

  noFill();
  for (int i = 1; i<=4; i++) {
    ellipse(width / 2, height / 2, i * 100, i * 100);
  }


  //円中心座標
  float centerX = width / 2;
  float centerY = height / 2;

  //円の半径
  float radius = 200;

  //三角関数を使って、円周上の点の座標を計算
  float x = centerX + radius * cos(angle);
  float y = centerY + radius * sin(angle);

  //円の中心点と回転する円の中心点を結ぶ
  line(centerX, centerY, x, y);

  //円状に移動する円を描画
  fill(0, 0, 0);
  ellipse(x, y, 5, 5);

  //角度を少しずつ増やす
  angle += 0.01;
}
