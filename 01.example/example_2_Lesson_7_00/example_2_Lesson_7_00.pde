//円の色を格納する変数
color col = color(0, 0, 255);

void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  noStroke();
  fill(col);
  ellipse(mouseX, mouseY, 100, 100);
}

//マウスを押すと赤
void mousePressed() {
  col = color(255, 0, 0);
}


void mouseReleased() {
  col = color(0, 0, 255);
}
