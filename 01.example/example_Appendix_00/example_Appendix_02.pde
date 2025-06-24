float a = radians(30);

void setup() {
  size(400, 400, P3D);
}

void draw() {
  background(0);
  translate(200, 200, 0);
  rotateY(a);
  box(100);
}

void keyPressed() {
  if (key == 'p') {
  saveFrame("Appendix_02_3D_cube_####.png");
  }
}
