class Walker {
  PVector location;
  PVector velocity;

  Walker() {
    location = new PVector(width / 2, height / 2);
  }

  void display() {
    stroke(0);
    point(location.x, location.y);
  }

  void step() {
    velocity = new PVector(random(3) - 1, random(3) - 1);
    location.add(velocity);
  }
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
