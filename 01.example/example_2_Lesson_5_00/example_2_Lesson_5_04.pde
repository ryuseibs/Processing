//オブジェクトmyCircleの準備
DrawEllipse myCircle;

void setup() {
  size(800, 600);
  //DrawEllipseクラスをインスタンス化
  //myCircleオブジェクトを生成
  //※コンストラクタにdiamaterとlocationを指定※
  myCircle = new DrawEllipse(400, new PVector(width / 2, height / 2));
}

void draw() {
  //myCircleクラスのdraw()を呼び出し
  myCircle.draw();
}

//DrawEllipseクラスの宣言
class DrawEllipse {
  //データ（変数）
  float diameter;
  PVector location;

  //コンストラクタ
  DrawEllipse(float _diameter, PVector _location) {
    diameter = _diameter;
    location = _location;
  }

  //メソッド
  void draw() {
    ellipse(location.x, location.y, diameter, diameter);
  }
}
