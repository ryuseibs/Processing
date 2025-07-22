import netP5.*;
import oscP5.*;

//OSCP5クラスのインスタンス
OscP5 oscP5;

//マウスの位置ベクトル
PVector mouseLoc;

void setup() {
  size(800, 600);
  frameRate(60);
  //ポートを12000に設定して新規にOSCP5のインスタンス生成
  oscP5 = new OscP5(this, 12000);
  //マウスの位置ベクトル初期化
  mouseLoc = new PVector(width / 2, height / 2);
}

void draw() {
  background(0);
  //マウスの場所に円を描画
  noFill();
  stroke(255);
  ellipse(mouseLoc.x, mouseLoc.y, 10, 10);
}

void oscEvent(OscMessage theOscMessage) {
  //もしOSCメッセージが /mouse/positionだったら
  if (theOscMessage.checkAddrPattern("/mouse/position") == true) {
  //最初の値をint型としてX座標
  mouseLoc.x = theOscMessage.get(0).intValue();
  //次の値をint型としてY座標
  mouseLoc.y = theOscMessage.get(1).intValue();
  }
}
