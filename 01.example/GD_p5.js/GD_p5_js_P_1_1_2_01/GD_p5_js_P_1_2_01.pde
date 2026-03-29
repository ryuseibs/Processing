int segmentCount = 360;
float radius = 200;

void setup() {
  size(500, 500);
}

void draw() {
  colorMode(HSB, 360, width, height);
  background(360, 0, height);

  int angleStep = 360 / segmentCount;

  beginShape(TRIANGLE_FAN);

  vertex(width/2, height/2);

  for (int angle = 0; angle <= 360; angle += angleStep) {
    float vx = width / 2 + cos(radians(angle)) * radius;
    float vy = height / 2 + sin(radians(angle)) * radius;
    vertex(vx, vy);
    fill(angle, mouseX, mouseY);
  }
  endShape();
}

void keyPressed() {
  switch(key) {
  case '1':
    segmentCount = 360;
    break;
  case '2':
    segmentCount = 45;
    break;
  case '3':
    segmentCount = 24;
    break;
  case '4':
    segmentCount = 12;
    break;
  case '5':
    segmentCount = 6;
    break;
  }
}
