//import fisica.*;
////FWorld宣言
//FWorld world;

//void setup() {
//  size(800, 600);
//  frameRate(60);
//  //Fisica初期化
//  Fisica.init(this);
//  //Fworld初期化
//  world = new FWorld();
//  //上下左右に壁生成
//  world.setEdges();
//}

//void draw() {
//  background(255);
//  //スピードを設定し物理演算
//  world.step(4.0/60.0);
//  //物体を描画
//  world.draw(this);
//}

//void mouseReleased() {
//  float width = random(10, 80);
//  float height = random(10, 80);
//  //新規に短形（FBox）を生成してインスタンス（box）を生成
//  FBox box = new FBox(width, height);
//  box.setPosition(mouseX, mouseY);
//  //反発力を0.6とする
//  box.setRestitution(0.6);
//  box.setFill(31, 127, 255);
//  box.setStroke(31);
//  //Fisicaの世界に追加
//  world.add(box);
//}
