float [][] r = new float[96][60];
float [][] g = new float[96][60];
float [][] b = new float[96][60];
char clr;

void setup() {
  size(480, 300);
  frameRate(10);
  noStroke();
  init();
}

void draw() {
  background(255);
  display();
  update();
}

void init() {
  for (int i = 0; i < 96; i++) {
    for (int j = 0; j < 60; j++) {
      r[i][j] = 255;
      g[i][j] = 255;
      b[i][j] = 255;
    }
  }
}

void display() {
  for (int i = 0; i < 96; i++) {
    for (int j = 0; j < 60; j++) {
      int x = i * 5;
      int y = j * 5;
      fill(r[i][j], g[i][j], b[i][j]);
      rect(x, y, 5, 5);
    }
  }
}

void update() {
  for (int i = 0; i < 96; i++) {
    for (int j = 0; j < 60; j++) {
      float d = dist(mouseX, mouseY, i * 5, j * 5);
      float dc = 255 / d;
      if (clr == 'r') {
        r[i][j] = r[i][j] + dc;
        g[i][j] = r[i][j] - dc;
        b[i][j] = r[i][j] - dc;
      } else if (clr == 'g') {
        r[i][j] = r[i][j] - dc;
        g[i][j] = r[i][j] + dc;
        b[i][j] = r[i][j] - dc;
      } else {
        r[i][j] = r[i][j] - dc;
        g[i][j] = r[i][j] - dc;
        b[i][j] = r[i][j] + dc;
      }
    }
  }
}

void keyPressed() {
  clr = key;
}
