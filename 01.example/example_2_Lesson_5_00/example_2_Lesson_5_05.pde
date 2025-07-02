////オブジェクトmyCircleの準備
////一つめの円
//DrawEllipse myCircle0;
////二つめの円
//DrawEllipse myCircle1;

//void setup() {
//  size(800, 600);
//  //DrawEllipseクラスをインスタンス化
//  //myCircleオブジェクトを生成
//  //※各円のコンストラクタにdiamaterとlocationを指定※
//  myCircle0 = new DrawEllipse(300, new PVector(300, 300));
//  myCircle1 = new DrawEllipse(150, new PVector(500, 500));
//}

//void draw() {
//  //各myCircleクラスのdraw()を呼び出し
//  myCircle0.draw();
//  myCircle1.draw();
//}

////DrawEllipseクラスの宣言
//class DrawEllipse {
//  //データ（変数）
//  float diameter;
//  PVector location;

//  //コンストラクタ
//  DrawEllipse(float _diameter, PVector _location) {
//    diameter = _diameter;
//    location = _location;
//  }

//  //メソッド
//  void draw() {
//    ellipse(location.x, location.y, diameter, diameter);
//  }
//}
