//Bubbleクラスを格納するArrayList
ArrayList<Bubble> bubbles;
PImage img;
//円の最大サイズ（直径）
int maxSize = 60;

void setup() {
  size(800, 800);
  frameRate(60);
  noStroke();
  //ArrayListの初期化
  bubbles = new ArrayList<Bubble>();
  img = loadImage("image_2000x2000.jpg");
  img.resize(width, height);
  //最初のきっか絵の円描画
  for (int i = 0; i < 10; i++) {
    PVector loc = new PVector(random(width), random(height));
    bubbles.add(new Bubble(loc));
  }
}

void draw() {
  background(0);
  //ArrayListに格納された数だけBubbleを描画
  for (int i = 0; i < bubbles.size(); i++) {
    bubbles.get(i).draw();
  }
  //Bubbleの状態を更新
  for (int i = 0; i < bubbles.size(); i++) {
    //アクティブ状態ならエンの首位のピクセルの色を確認
    if (bubbles.get(i).isDead == false) {
      boolean expand = bubbles.get(i).checkPixel();
      //これ以上膨張できない場合、新規のBooleanを生成
      if (expand == false) {
        PVector loc;
        //余白が見つかるまで繰り返し
        while (true) {
          loc = new PVector(random(width), random(height));
          color c = get(int(loc.x), int(loc.y));
          if ((red(c) + blue(c) + green(c))== 0) break;
        }
        //余白に新規Bubbleを生成
        bubbles.add(new Bubble(loc));
        bubbles.get(i).isDead = true;
      }
    }
  }
}

//マウスクリックで初期化
void mouseClicked() {
  //ArrayListをクリア
  bubbles.clear();
  //きっかけの円を描画
  for (int i = 0; i < 100; i++) {
    PVector loc = new PVector(random(width), random(height));
    bubbles.add(new Bubble(loc));
  }
}

//Bubbleクラス
//円が膨張しながら空間を充填
class Bubble {
  //円のサイズ（直径）
  float size;
  //膨張スピード
  float expandSpeed;
  //円の色
  color circleColor;
  //中心の位置
  PVector location;
  //膨張中か否か
  boolean expand;
  //活動している状態か否か
  boolean isDead;

  //コンストラクタ
  Bubble(PVector _location) {
    location = _location;
    //パラメータの初期値設定
    size = 0;
    expandSpeed = 4.0;
    expand = true;
    isDead = true;
    //読み込んだ画像から中心位置と同じピクセルの色取得
    circleColor = img.get(int(location.x), int(location.y));
  }

  //円描画
  void draw() {
    //もし膨張したら
    if (expand == true) {
      //指定した速度で膨張
      size += expandSpeed;
    }
    fill(circleColor);
    ellipse(location.x, location.y, size, size);
  }

  //円の周囲のピクセルの色を取得して、膨張する余地があるかを判断
  boolean checkPixel() {
    float nextSize = size + expandSpeed;
    for (float i = 0; i <TWO_PI; i+=0.01) {
      //円の周囲の座標を取得
      int x = int(cos(i) * nextSize /2.0 + location.x);
      int y = int(sin(i) * nextSize /2.0 + location.y);
      //取得した座標の直下のピクセルの色を取得
      color c = get(x, y);
      //色が黒以外、もしくは最大サイズを超えていたら膨張を中止
      if ((red(c) + blue(c) + green(c)) > 0 || size >maxSize) {
        expand = false;
      }
    }
    //現在の膨張の状態を返す
    return expand;
  }
}
