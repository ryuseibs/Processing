//float area(float a, float h) {
//  float  s = a * h / 2.0;
//  return s;
//}

//void setup() {
//  float s1 = area(100, 60);
//  float s2 = area(80, 210);
//  float s  = s1 + s2;
//  println(s);
//}

//練習問題７−１
//void setup() {
//  size(480, 480);
//}

//void ellipse(float a) {
//  rectMode(CENTER);
//  translate(240,240);
//  ellipse(0, 0, a, a);
//  ellipse(0, 0, a * 0.8, a * 0.8);
//  ellipse(0, 0, a * 0.3, a * 0.3);
//}

//void draw() {
//  ellipse(100);
//}

//練習問題７−２
float area(float a, float b) {
  float s = a * b;
  return s;
}

void setup() {
  float o = area(10.5, 6.0);
  float p = area(21.3, 8.6);
  float q = area(3.5, 21.4);

  float total = o + p + q;
  println(total);
}
