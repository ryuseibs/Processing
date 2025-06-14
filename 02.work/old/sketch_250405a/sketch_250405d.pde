import com.hamoid.*;

PFont font;
float y1, y2, y3, y4, y5, y6, y7;
String msg , msg2 , msg3 , msg4 , msg5 , msg6 , msg7;
//VideoExport video;

void setup() {
  size(800,800);
  font = createFont("Hiragino Maru Gothic Pro", 32);
  textFont(font);
 
  y1 = -150;
  y2 = -250;
  y3 = -400;
  y4 = -550;
  y5 = -700;
  y6 = -850;
  y7 = -1000;
  
  msg = "遥か遠いキミへ 届けたい";
  msg2 = "I want to deliver this to you, who is so far away";
  msg3 = "想把这个传递给远方的你";
  msg4 = "Ndinoda kukuendesa izvi, uri kure kudaro .";
  msg5 = "Jeg vil gerne levere dette til dig, som er så langt væk";
  msg6 = "Wuye nyiro awo adə yitagattəgəro raakkəna, ndu zauro cintəzənadə";
  msg7 = "Ek wil dit aan jou, wat so ver is, aflewer";
  
  //// 動画の出力ファイル名　ProcessingVersionを合わせないとエラーが出る（Processing 3.5.4）
  //video = new VideoExport(this, "my_video.mp4");
  //video.startMovie();
}

void draw() {
  background(0);
  fill(255);
 
  drawmsg1(y1);
  drawmsg2(y2);
  drawmsg3(y3);
  drawmsg4(y4);
  drawmsg5(y5);
  drawmsg6(y6);
  drawmsg7(y7);
  
  float speed = 2;
  float resetY = height + 32;

  // 各メッセージのy座標を更新・リセット
  y1 = (y1 > resetY) ? -100 : y1 + speed;
  y2 = (y2 > resetY) ? -100 : y2 + speed;
  y3 = (y3 > resetY) ? -100 : y3 + speed;
  y4 = (y4 > resetY) ? -100 : y4 + speed;
  y5 = (y5 > resetY) ? -100 : y5 + speed;
  y6 = (y6 > resetY) ? -100 : y6 + speed;
  y7 = (y7 > resetY) ? -100 : y7 + speed;
}

void drawmsg1(float y) {
  //msg1
  pushMatrix();
  translate(-200, 0);         // 描きたい場所に原点を移動
  rotate(radians(-3));        // そこを中心に回転
  text(msg, width / 2 - textWidth(msg) / 2, y); // 中央に表示
  popMatrix();
}

void drawmsg2(float y) {
  //msg2
  pushMatrix();
  translate(0, 20);         // 描きたい場所に原点を移動
  rotate(radians(+4));        // そこを中心に回転
  text(msg2, width / 2 - textWidth(msg2) / 2, y); // 中央に表示
  popMatrix();
}

void drawmsg3(float y) {
  //msg3
  pushMatrix();
  translate(0, 40);         // 描きたい場所に原点を移動
  rotate(radians(-2));        // そこを中心に回転
  text(msg3, width / 2 - textWidth(msg3) / 2, y); // 中央に表示
  popMatrix();
}

void drawmsg4(float y) {
  //msg4
  pushMatrix();
  translate(-180, 60);         // 描きたい場所に原点を移動
  rotate(radians(-3));        // そこを中心に回転
  text(msg4, width / 2 - textWidth(msg4) / 2, y); // 中央に表示
  popMatrix();
}

void drawmsg5(float y) {
  //msg5
  pushMatrix();
  translate(-190, 80);         // 描きたい場所に原点を移動
  rotate(radians(+4));        // そこを中心に回転
  text(msg5, width / 2 - textWidth(msg5) / 2, y); // 中央に表示
  popMatrix();
}

void drawmsg6(float y) {
  //msg6
  pushMatrix();
  translate(-180, 100);         // 描きたい場所に原点を移動
  rotate(radians(-3));        // そこを中心に回転
  text(msg6, width / 2 - textWidth(msg6) / 2, y); // 中央に表示 
  popMatrix();
}

void drawmsg7(float y) {
  //msg7
  pushMatrix();
  translate(70, 120);         // 描きたい場所に原点を移動
  rotate(radians(+4));        // そこを中心に回転
  text(msg6, width / 2 - textWidth(msg6) / 2, y); // 中央に表示 
  popMatrix();
}
