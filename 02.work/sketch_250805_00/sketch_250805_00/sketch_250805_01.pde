//角度初期化
float angle = 0;

void setup() {
  size(510, 960);
}

void draw() {
  background(255);
  noFill();

  //円単位の半径
  float r = 50;

  for (int x = 0; x <= width; x += 55) {
    for (int y = 0; y <= height; y += 55) {
      ellipse(x, y, r, r);
    }
  }

  for (int x = 0; x <= width; x += 55) {
    for (int y = 0; y <= height; y += 55) {
      //円中心座標
      float centerX = x;
      float centerY = y;

      //三角関数を使って、円周上の点の座標を計算
      float cosx = centerX + (r / 2) * cos(angle);
      float siny = centerY + (r / 2) * sin(angle);
      float cosx2 = centerX + (r / 2 - 10) * cos(-angle);
      float siny2 = centerY + (r / 2 - 10) * sin(-angle);

      //円の中心点と回転する円の中心点を結ぶ
      line(centerX, centerY, cosx, siny);
      line(centerX, centerY, cosx2, siny2);
    }
  }

  //角度を少しずつ増やす
  angle += 0.01;
}
