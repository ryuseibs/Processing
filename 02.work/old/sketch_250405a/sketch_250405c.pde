//PFont font;
//float x1,x2,x3,x4,x5;

//void setup() {
//  size(500, 500);
//  font = createFont("Hiragino Maru Gothic Pro", 32);
//  textFont(font);
//  x1  = width;
//  x2  = width - 700;
//  x3  = width;
//  x4  = width - 700;
//  x5  = width;
  
//}

//void draw() {
//  background(255);
//  fill(0);

//  String msg0 = "Spending All My Time";
//  String msg1 = msg0;
//  String msg2 = msg0;
//  String msg3 = msg0;
//  String msg4 = msg0;
//  String msg5 = msg0;
  
//  // テロップ1（上の方）
//  text(msg1, x1, 100);
//  x1 -= 2;
//  if (x1 < -textWidth(msg1)) {
//    x1 = width;
//  }

//  // テロップ2（下の方）
//  text(msg2, x2, 130);
//  x2 += 2;
//  if (x2 > width) {
//    x2 = -textWidth(msg2);
//  }
  
//  text(msg3, x3, 160);
//  x3 -= 2;
//  if (x3 < -textWidth(msg3)) {
//    x3 = width;
//  }
  
//  text(msg4, x4, 190);
//  x4 += 2;
//  if (x4 > width) {
//    x4 = -textWidth(msg4);
//  }
  
//  text(msg5, x5, 220);
//  x5 -= 2;
//  if (x5 < -textWidth(msg5)) {
//    x5 = width;
//  }
  
  
//}
