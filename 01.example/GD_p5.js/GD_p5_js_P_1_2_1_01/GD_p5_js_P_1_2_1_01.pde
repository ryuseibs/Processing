int tileCountX, tileCountY, intercol, col1, col2;
float tileWidth, tileHeight, amount, posX, posY;
int[] colorsLeft, colorsRight;


void setup() {
  size(500, 500);

  // 1. 棚を用意する（これがないとエラー）
  colorsLeft = new int[100];
  colorsRight = new int[100];

  // 2. 棚に「色」を詰め込む（これがないと真っ黒）
  for (int i = 0; i < 100; i++) {
    colorsLeft[i] = color(random(255), 255, 255);  // ランダムな色
    colorsRight[i] = color(random(255), 255, 255); // ランダムな色
  }
}

void draw() {
  tileCountX = int (map(mouseX, 0, width, 2, 100));
  tileCountY = int (map(mouseY, 0, height, 2, 10));

  tileWidth = width / tileCountX;
  tileHeight = height / tileCountY;

  for (int gridY = 0; gridY < tileCountY; gridY++) {
    col1 = colorsLeft[gridY];
    col2 = colorsRight[gridY];

    for (int gridX = 0; gridX < tileCountX; gridX++) {
      amount = map(gridX, 0, tileCountX - 1, 0, 1);
      intercol = lerpColor(col1, col2, amount);

      fill(intercol);

      posX = tileWidth * gridX;
      posY = tileHeight * gridY;
      rect(posX, posY, tileWidth, tileHeight);
    }
  }
}
