Spot[] spots;

void setup() {
  size(480, 300);
  int n = 40;
  int d = width / n;
  spots = new Spot[n];
  for (int i = 0; i<n; i++) {
    float x = d / 2 + i * d;
    float speed = random(0.1, 2.0);
    spots[i] = new Spot(x, 0, d, speed);
  }
  noStroke();
}

void draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  for (int i = 0; i < spots.length; i++) {
    spots[i].move();
    spots[i].display();
  }
}

class Spot {
  float x, y;
  float diameter;
  float speed;

  Spot(float xpos, float ypos, float dia, float sp) {
    x = xpos;
    y = ypos;
    diameter = dia;
    speed = sp;
  }

  void move() {
    y = y + speed;
    if (y > height) {
      speed = - speed;
    }
    if (y < 0) {
      speed = - speed;
    }
  }

  void display() {
    fill(255);
    ellipse(x, y, diameter, diameter);
  }
}

  void keyPressed() {
    if (key == 'p') {
      saveFrame("0901a_XXXX_2.png");
    }
  }
