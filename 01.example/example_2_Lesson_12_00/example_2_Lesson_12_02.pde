//import controlP5.*;
////controlP5をcp5として宣言
//ControlP5 cp5;

////スライダー：立方体のサイズ
//Slider boxSize;
////スライダ２D：回転スピード(x,y)
//Slider2D rotate;

//void setup() {
//  size(800, 600, P3D);
//  //controlP5初期化
//  cp5 = new ControlP5(this);
//  //スライダー：立方体のサイズ追加
//  boxSize = cp5.addSlider("BOX SIZE")
//    .setPosition(20, 20)
//    .setRange(0, 400)
//    .setValue(200);
//  //スライダー２D：回転スピードXY
//  rotate = cp5.addSlider2D("ROTATION")
//    .setPosition(20, 40)
//    .setSize(100, 100)
//    .setMinMax(1.0, 1.0, 10.0, 10.0)
//    .setValue(2.0, 2.0);
//}

//void draw() {
//  background(0);
//  pushMatrix();
//  //ライティングON
//  lights();
//  translate(width / 2, height / 2, 0);
//  //X軸を中心に回転
//  rotateX(millis() / 1000.0 * rotate.getArrayValue()[0]);
//  //Y軸を中心に回転
//  rotateY(millis() / 1000.0 * rotate.getArrayValue()[1]);
//  fill(255);
//  noStroke();
//  box(boxSize.getValue());
//  popMatrix();
//}
