import fisica.*;
//FWorld宣言
FWorld world;
//ポリゴンを設定
FPoly poly = null;
//スピードを可変
float speed = 4.0;

void setup() {
  size(800, 600);
  frameRate(60);
  //Fisica初期化
  Fisica.init(this);
  //Fworld初期化
  world = new FWorld();
}

void draw() {
  background(255);
  //スピードを設定し物理演算
  world.step(speed / 60.0);
  //物体を描画
  world.draw(this);
  //描画中にポリゴンを描画
  if (poly != null) {
    poly.draw(this);
  }
}

void keyPressed() {
  //bのキー押下時に短形追加
  if (key == 'b') {
    float width = random(10, 40);
    float height = random(10, 40);
    //新規に短形（FBox）を生成してインスタンス（box）を生成
    FBox box = new FBox(width, height);
    box.setPosition(mouseX, mouseY);
    //反発力を0.6とする
    box.setRestitution(0.6);
    box.setFill(31, 127, 255);
    box.setStroke(31);
    //Fisicaの世界に追加
    world.add(box);
  }
  //cのキー押下時に円形追加
  if (key == 'c') {
    float radius = random(10, 40);
    //新規に円形（FCircle）を生成してインスタンス（circle）を生成
    FCircle circle = new FCircle(radius);
    circle.setPosition(mouseX, mouseY);
    //反発力を0.6とする
    circle.setRestitution(0.6);
    circle.setFill(255, 127, 31);
    circle.setStroke(31);
    //Fisicaの世界に追加
    world.add(circle);
  }
  if (key =='q') {
    world.clear();
  }
}

void mousePressed() {
  //新規にポリゴン生成
  poly = new FPoly();
  poly.setFill(127);
  //画面固定
  poly.setStatic(true);
  //現在のマウスの位置を頂点に指定
  poly.vertex(mouseX, mouseY);
}

void mouseDragged() {
  //もしポリゴンを描画中だったら
  poly.vertex(mouseX, mouseY);
}

void mouseReleased() {
  //もしポリゴンを描画中だったら
  if (poly != null) {
    world.add(poly);
    poly = null;
  }
}
