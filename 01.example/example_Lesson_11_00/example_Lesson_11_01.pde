//void setup() {
//  size(480, 300);
//  background(255);
//}

//void draw() {
//}

//void firework(float x0, float y0, float R) {
//  fill(0);
//  ellipse(x0, y0, 6, 6);
//  for (int i = 0; i < 21; i++) {
//    float t = radians(random(0, 360));
//    float r = random(R);
//    float x = x0 + r * cos(t);
//    float y = y0 + r * sin(t);
//    ellipse(x, y, 6, 6);
//    line(x, y, x0, y0);
//  }
//}

//void mousePressed() {
//  firework(mouseX, mouseY, 100);
//}

//void keyPressed() {
//  if (key =='p') {
//    saveFrame("0502a_####.png");
//  }

//練習問題１１−２
//void setup() {
//  size(480, 300);
//  background(255);
//}

//void draw() {
//}

//void firework(float x0, float y0, float R) {
//  fill(0);
//  ellipse(x0, y0, 6, 6);
//  for (int i = 0; i < 21; i++) {
//    float t = radians(random(0, 360));
//    float r = random(R);
//    float x = x0 + r * cos(t);
//    float y = y0 + r * sin(t);
//    fill(random(255), random(255), random(255));
//    ellipse(x, y, 6, 6);
//    line(x, y, x0, y0);
//  }
//}

//void mousePressed() {
//  firework(mouseX, mouseY, 100);
//}

//void keyPressed() {
//  if (key =='p') {
//    saveFrame("0502a_####_1.png");
//  }
//}
