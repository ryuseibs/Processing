//void setup() {
//size(480,300);
//background(255);
//}

//void draw() {
//translate(width/2, height/2);
//float x = randomGaussian() * 50;
//float y = randomGaussian() * 50;
//point(x,y);
//}

//void keyPressed() {
//  if (key == 'p') {
//  saveFrame("0301a_####.png");
//  }
//}

//練習問題９−３
void setup() {
size(480,300);
background(255);
strokeWeight(10);
}

void draw() {
translate(width/2, height/2);
float x = randomGaussian() * 50;
float y = randomGaussian() * 50;
point(x,y);
}

void keyPressed() {
  if (key == 'p') {
  saveFrame("0301a_####.png");
  }
}
