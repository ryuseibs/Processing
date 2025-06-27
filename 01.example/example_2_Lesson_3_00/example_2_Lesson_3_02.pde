//setup()とdraw()で共通して使用する関数
int locationX;  //X座標の現在位置
int direction;  //移動する向き（-1 or 1）

void setup() {
  size(800, 600);
  frameRate(60);
  fill(0, 127, 255);
  noStroke();

  //X座標の初期値を０
  locationX = 0;

  //向きの初期値を−１
  direction = -1;
}

void draw() {
  background(0);
  ellipse(locationX, height / 2, 20, 20);

  //現在の向きに１０位移動した場所を新たなX座標にする
  locationX = locationX + 10 * direction;

  //X座標が０より小さいか、または画面の幅より大きいとき
  if (locationX < 0 || locationX > width) {
    direction = direction * -1;
  }
}
