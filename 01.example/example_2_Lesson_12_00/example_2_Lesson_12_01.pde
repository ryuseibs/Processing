import controlP5.*;
//controlP5をcp5として宣言
ControlP5 cp5;

//スライダーを３つ宣言
//立方体のサイズ
Slider boxSize;
//回転スピードX
Slider rotateX;
//回転スピードY
Slider rotateY;

void setup() {
  size(800, 600, P3D);
  //controlP5初期化
  cp5 = new ControlP5(this);
  //スライダー１
  boxSize = cp5.addSlider("BOX SIZE")
    .setPosition(20, 20)
    .setRange(0, 400)
    .setValue(200);
  //スライダー２
  rotateX = cp5.addSlider("ROTATE X")
    .setPosition(20, 30)
    .setRange(1.0, 10.0)
    .setValue(2.0);
  //スライダー３
  rotateY = cp5.addSlider("ROTATE Y")
    .setPosition(20, 40)
    .setRange(1.0, 10.0)
    .setValue(2.0);
}

void draw() {
  background(0);
  pushMatrix();
  //ライティングON
  lights();
  translate(width / 2, height / 2, 0);
  //X軸を中心に回転
  rotateX(millis() / 1000.0 * rotateX.getValue());
  //Y軸を中心に回転
  rotateY(millis() / 1000.0 * rotateY.getValue());
  fill(255);
  noStroke();
  box(boxSize.getValue());
  popMatrix();
}
