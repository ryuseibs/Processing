float r  = 1;
float t  = 0;
float dr = 1;
float dt = radians(360 / 48);

void setup() {
  size(480, 300);
  background(255);
  strokeWeight(2);
}

void draw() {
  translate(width / 2, height / 2);
  float x = r * cos(t);
  float y = r * sin(t);
  point(x,y);
  r = r + dt;
  t = t + dt;
}

void keyPressed() {
  if (key == 'p') {
    saveFrame("0305b_####.png");
  }
}
