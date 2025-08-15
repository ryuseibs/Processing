String message = "Hello";
float x = 0;
float spacing;
void setup() {
  size(500, 500);
  textSize(24);
  fill(0);
  textAlign(CENTER);
  //文字の幅を計測して間隔設定
  spacing = textWidth(message);
}

void draw() {
  background(255);
  for (int i = -1; i < width / spacing; i++) {
    float currentX = x + i * spacing;
    text(message, currentX, height/2);
  }
  x++;
  if (x > spacing) {
    x = x - spacing;
  }
}
