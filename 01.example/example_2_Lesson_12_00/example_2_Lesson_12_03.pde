import controlP5.*;
//controlP5をcp5として宣言
ControlP5 cp5;

//スライダー：立方体のサイズ
Slider boxSize;
//スライダ２D：回転スピード(x,y)
Slider2D rotate;
//カラー：立方体の色
ColorWheel col;
//トグルボタン：スタート・ストップ
Toggle start;

void setup() {
  size(800, 600, P3D);
  //controlP5初期化
  cp5 = new ControlP5(this);
  //スライダー：立方体のサイズ追加
  boxSize = cp5.addSlider("BOX SIZE")
    .setPosition(20, 20)
    .setRange(0, 400)
    .setValue(200);
  //スライダー２D：回転スピードXY
  rotate = cp5.addSlider2D("ROTATION")
    .setPosition(20, 40)
    .setSize(100, 100)
    .setMinMax(1.0, 1.0, 10.0, 10.0)
    .setValue(2.0, 2.0);
  //トグルスイッチ
  start = cp5.addToggle("START/STOP")
    .setPosition(20, 160)
    .setSize(20, 20);
  //カラー選択
  col = cp5.addColorWheel("COLOR")
    .setPosition(20, 220)
    .setRGB(color(31, 128, 255));
}

void draw() {
  background(0);
  pushMatrix();
  //ライティングON
  lights();
  translate(width / 2, height / 2, 0);
  //トグルスイッチがONなら回転
  if (start.getState()) {
    //X軸を中心に回転
    rotateX(millis() / 1000.0 * rotate.getArrayValue()[0]);
    //Y軸を中心に回転
    rotateY(millis() / 1000.0 * rotate.getArrayValue()[0]);
  }
  //カラーパレットで選択した色で塗る
  fill(col.getRGB());
  noStroke();
  box(boxSize.getValue());
  popMatrix();
}
