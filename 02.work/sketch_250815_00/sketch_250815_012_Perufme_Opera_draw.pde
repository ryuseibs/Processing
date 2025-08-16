void draw() {
  background(0);

  // 全ての行を1つのループで描画・更新
  for (int i = 0; i < messages.length; i++) {
    float y = 30 + i * 25; // 各行のy座標を計算
    // 描画
    text(messages[i], x[i], y);
    // 移動スピードを適用
    x[i] = x[i] + speeds[i];
    // 画面外に出たらリセット
    if (x[i] > width) {
      x[i] = -spacing[i];
    }
  }
}
