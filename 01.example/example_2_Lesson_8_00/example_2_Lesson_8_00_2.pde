////パーティクル数
//int NUM = 2000;
////パーティクルを格納する配列
//ParticleVec3[] particles = new ParticleVec3[NUM];

//void setup() {
//  size(800, 600, P3D);
//  frameRate(60);
//  //パーティクルを初期化
//  for (int i = 0; i < NUM; i++) {
//    //クラスをインスタンス化
//    particles[i] = new ParticleVec3();
//    //初期値をランダムな場所に
//    particles[i].location.set(random(width), random(height), random(height / 2));
//    //重力を0に
//    particles[i].gravity.set(0.0, 0.0, 0.0);
//    //摩擦力を0.01
//    particles[i].friction = 0.01;
//    //半径を2.0
//    particles[i].radius = 2.0;
//  }
//  background(0);
//}

//void draw() {
//  noStroke();
//  //動きをフェード
//  fill(0, 31);
//  rect(0, 0, width, height);
//  fill(255);
//  for (int i = 0; i < NUM; i++) {
//    particles[i].update();
//    particles[i].draw();
//    particles[i].bounceOffWalls();
//  }
//}

////マウスドラッグで吸引力を発生
//void mouseDragged() {
//  //パーティクルの数だけ繰り返し
//  for (int i = 0; i < NUM; i++) {
//    PVector mouseLoc = new PVector(mouseX, mouseY);
//    //引力を発生
//    particles[i].attract(mouseLoc, 200, 5, 200);
//  }
//}
