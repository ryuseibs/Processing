PImage img;

void setup() {
  size(800, 800);
  img = loadImage("image_2000x2000.jpg");
}

void draw() {
  background(0);
  //画像の明るさ（tint）を指定
  tint(127);
  image(img, 0, 0);
  //画像の明るさをリセット（notint）
  noTint();
  image(img, width/2, 0);
}
