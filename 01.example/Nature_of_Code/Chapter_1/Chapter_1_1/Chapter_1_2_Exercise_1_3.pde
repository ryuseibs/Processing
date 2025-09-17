PVector location;
PVector velocity;

void setup() {
  size(640, 360);
  translate(width / 2, height / 2);
  location = new PVector(100, 100);
  velocity = new PVector(2.5, 5);
}

void draw() {
  background(255);
  stroke(0);
  fill(255);
  rect(0, 0, width / 2, height / 2);
  location.add(velocity);
  if ((location.x > width / 2) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height / 2) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }

  stroke(0);
  fill(175);
  ellipse(location.x, location.y, 16, 16);
}
