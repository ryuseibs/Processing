//void setup() {
//  size(480, 300);
//  background(255);
//}

//void draw() {
//  float w = random(1, 10);
//  strokeWeight(w);
//  point(mouseX, mouseY);
//}

//void keyPressed() {
//  if (key == 'p') {
//    saveFrame("0306a_####.png");
//  }
//}

//練習問題９−８
void setup() {
  size(480, 300);
  background(255);
}

void draw() {
  if (mousePressed == true) {
    float w = random(1, 10);
    strokeWeight(w);
    point(mouseX, mouseY);
  }
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("0306a_####_1.png");
  }
}
