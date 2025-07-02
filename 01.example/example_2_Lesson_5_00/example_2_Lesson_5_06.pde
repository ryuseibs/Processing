//PDF Exportライブラリのインポート
import processing.pdf.*;

//ノイズの強さ
float strength = 1400.0;
//グリッドの細かさ
int step = 6;
//パーリンノイズのスケール
float noiseScale = 0.002;

void setup() {
  size(1920, 1200);
  //1フレームで書き出すようにループさせない
  noLoop();
}

void draw() {
  //PDF書き出し
  beginRecord(PDF, "output.pdf");
  background(255);
  stroke(191);
  noFill();
  //２次元のパーリンノイズをベジェ曲線
  for (int j = -height * 2; j < height * 2; j += step) {
    beginShape();
    for (int i = -width / 2; i < width * 1.5; i +=step) {
      float noise = noise(i * noiseScale, j * noiseScale) * strength;
      curveVertex(i, j + noise +(i * 0.5));
    }
    endShape();
  }
  //PDFの記録終了してファイル書き出し
  endRecord();
}
