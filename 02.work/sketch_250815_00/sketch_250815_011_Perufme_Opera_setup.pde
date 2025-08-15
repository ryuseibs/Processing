//複数の文字列を使用するため、配列宣言する
String[] messages = new String[52];
float x = 0;
//複数の文字列の幅の計測を行うため、配列宣言する
float[] spacing = new float[52];

void setup() {
  size(720, 1080);
  textSize(14);
  fill(0);
  textAlign(LEFT);
  
  //各配列ごとに各文字列を導入
  messages[0] = "1-01. Challenger";
  messages[1] = "1-02. Linear Motor Girl";
  messages[2] = "1-03. Computer City";
  messages[3] = "1-04. Electro World";
  messages[4] = "1-05. Perfect Star Perfect Style";
  messages[5] = "1-06. Chocolate Disco";
  messages[6] = "1-07. Polyrhythm";
  messages[7] = "1-08. SEVENTH HEAVEN";
  messages[8] = "1-09. Baby cruising Love";
  messages[9] = "1-10. Macaroni";
  messages[10] = "1-11. GAME";
  messages[11] = "1-12. Secret Secret";
  messages[12] = "1-13. love the world";
  messages[13] = "1-14. edge (⊿-mix)";
  messages[14] = "1-15. Dream Fighter";
  messages[15] = "1-16. One Room Disco";
  messages[16] = "2-01. NIGHT FLIGHT";
  messages[17] = "2-02. I still love U";
  messages[18] = "2-03. Fushizen Na Girl";
  messages[19] = "2-04. Natural Ni Koishite";
  messages[20] = "2-05. VOICE";
  messages[21] = "2-06. Nee";
  messages[22] = "2-07. FAKE IT";
  messages[23] = "2-08. Laser Beam";
  messages[24] = "2-09. Kasuka Na Kaori";
  messages[25] = "2-10. Spice";
  messages[26] = "2-11. MY COLOR";
  messages[27] = "2-12. Spring of Life";
  messages[28] = "2-13. Spending all my time";
  messages[29] = "2-14. Hurly Burly";
  messages[30] = "2-15. Mirai No Museum";
  messages[31] = "2-16. Daijyobanai";
  messages[32] = "2-17. Magic of Love (Album-mix)";
  messages[33] = "2-18. 1mm";
  messages[34] = "3-01. Party Maker";
  messages[35] = "3-02. Sweet Refrain";
  messages[36] = "3-03. Cling Cling";
  messages[37] = "3-04. Hold Your Hand";
  messages[38] = "3-05. DISPLAY";
  messages[39] = "3-06. Relax In The City";
  messages[40] = "3-07. Pick Me Up";
  messages[41] = "3-08. STAR TRAIN";
  messages[42] = "3-09. STORY";
  messages[43] = "3-10. FLASH";
  messages[44] = "3-11. TOKYO GIRL";
  messages[45] = "3-12. If you wanna";
  messages[46] = "3-13. Everyday";
  messages[47] = "3-14. Mugenmirai";
  messages[48] = "3-15. FUSION";
  messages[49] = "3-16. Future Pop";
  messages[50] = "3-17. Let Me Know";
  messages[51] = "3-18. Nananananairo";
  
  //文字の幅を計測して間隔設定
  for (int i = 0; i < messages.length; i++) {
  spacing[i] = textWidth(messages[i]);
  }
}
