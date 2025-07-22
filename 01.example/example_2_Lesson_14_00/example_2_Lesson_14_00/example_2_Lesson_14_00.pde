import netP5.*;
import oscP5.*;

//OSCP5クラスのインスタンス
OscP5 oscP5;

//OSC送出先のネットアドレス
NetAddress myRemoteLocation;

void setup() {
  size(800, 600);
  frameRate(60);
  //ポートを12001に設定して新規にOSCP5のインスタンス生成
  oscP5 = new OscP5(this, 12001);
  //OSC送信先のIPアドレスとポート指定
  myRemoteLocation = new NetAddress("127.0.0.1", 12000);
}

void draw() {
  background(0);
  //マウスの場所に円を描画
  noFill();
  stroke(255);
  ellipse(mouseX, mouseY, 10, 10);
  //現在のマウスの位置をOSCで送出
  OscMessage myMessage = new OscMessage("/mouse/position");
  myMessage.add(mouseX);
  myMessage.add(mouseY);
  //OSCメッセージを送信
  oscP5.send(myMessage, myRemoteLocation);
}
