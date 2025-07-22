import netP5.*;
import oscP5.*;

//OSCP5クラスのインスタンス
OscP5 oscP5;

//マウスの位置ベクトル
PVector mouseLoc;

//背景色
color bgColor;

//拡がる円のために配列
ArrayList<Ring> rings;

void setup() {
  size(800, 600, P3D);
  frameRate(60);
  //ポートを12000に設定して新規にOSCP5のインスタンス生成
  oscP5 = new OscP5(this, 12000);
  //マウスの位置ベクトル初期化
  mouseLoc = new PVector(width / 2, height / 2);
  //拡がる円のための配列初期化
  rings = new ArrayList<Ring>();
}

void draw() {
  background(bgColor);
  //OSCで指定された座標に円を描く
  noFill();
  stroke(255);
  ellipse(mouseLoc.x, mouseLoc.y, 10, 10);
  //拡がる円を描画
  for (int i = 0; i < rings.size(); i++) {
    rings.remove(i).draw();
    //もし指定した大きさより大きくなったら円を削除
    if (rings.get(i).radius > width * 2 ) {
      rings.remove(i);
    }
  }
}

//OSCメッセージを受信した際に実行するイベント
void oscEvent(OscMessage theOscMessage) {
  //もしOSCメッセージが /mouse/positionだったら
  if (theOscMessage.checkAddrPattern("/mouse/position") == true) {
    //最初の値をint型としてX座標
    mouseLoc.x = theOscMessage.get(0).intValue();
    //次の値をint型としてY座標
    mouseLoc.y = theOscMessage.get(1).intValue();

    //もしOSCメッセージが /mouse/clickだったら
  } else if (theOscMessage.checkAddrPattern("/mouse/click") == true) {
    //もしmousePressedだったら
    if (theOscMessage.get(0).intValue() == 1) {
      bgColor = color(255, 0, 0);
      //拡がる円を新規に追加
      PVector location = new PVector();
      location.x = theOscMessage.get(1).intValue();
      location.y = theOscMessage.get(2).intValue();
      Ring r = new Ring(location);
      rings.add(r);
    } else {
      bgColor = color(0);
    }
  }
}

//拡がる円を描画するクラス
class Ring {
  PVector location;
  float radius;
  float speed;

  Ring(PVector _location) {
    location = new PVector();
    location = _location;
    radius = 0;
    speed = 5.0;
  }

  void draw() {
    strokeWeight(4.0);
    noFill();
    stroke(0, 127, 255);
    pushMatrix();
    translate(location.x, location.y);
    ellipse(0, 0, radius, radius);
    popMatrix();
    radius += speed;
    strokeWeight(1.0);
  }
}
