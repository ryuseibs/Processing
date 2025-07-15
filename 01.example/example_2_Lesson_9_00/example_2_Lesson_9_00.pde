PImage img;

void setup() {
  size(800, 800);
  img = loadImage("image_2000x2000.jpg");
}

void draw() {
  background(0);
  image(img, 0, 0, width, height);
}
