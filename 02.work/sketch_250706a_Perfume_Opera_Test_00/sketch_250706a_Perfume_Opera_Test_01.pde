//テスト２：複数の文字列を画面幅・高さいっぱい

void setup() {
  size(1080, 720);
  background(0);
  textAlign(LEFT, CENTER);
}

void draw() {
  for (int x = 0; x <= width; x += 100) {
    text("1-01. Challenger", x, (height / 2) -350);
    text("1-02. Linear Motor Girl", x, (height / 2) -340);
    text("1-03. Computer City", x, (height / 2) -330);
    text("1-04. Electro World", x, (height / 2) -320);
    text("1-05. Perfect Star Perfect Style", x, (height / 2) -310);
    text("1-06. Chocolate Disco", x, (height / 2) -300);
    text("1-07. Polyrhythm", x, (height / 2) -290);
    text("1-08. SEVENTH HEAVEN", x, (height / 2) -280);
    text("1-09. Baby cruising Love", x, (height / 2) -270);
    text("1-10. Macaroni", x, (height / 2) -260);
    text("1-11. GAME", x, (height / 2) -250);
    text("1-12. Secret Secret", x, (height / 2) -240);
    text("1-13. love the world", x, (height / 2) -230);
    text("1-14. edge (⊿-mix)", x, (height / 2) -220);
    text("1-15. Dream Fighter", x, (height / 2) -210);
    text("1-16. One Room Disco", x, (height / 2) -200);
    text("2-01. NIGHT FLIGHT", x, (height / 2) -190);
    text("2-02. I still love U", x, (height / 2) -180);
    text("2-03. Fushizen Na Girl", x, (height / 2) -170);
    text("2-04. Natural Ni Koishite", x, (height / 2) -160);
    text("2-05. VOICE", x, (height / 2) -150);
    text("2-06. Nee", x, (height / 2) -140);
    text("2-07. FAKE IT", x, (height / 2) -130);
    text("2-08. Laser Beam", x, (height / 2) -120);
    //2-09. Kasuka Na Kaoriは文字が今の条件だと重なる
    text("2-09. Kasuka Na Kaori", x, (height / 2) - 110);
    text("2-10. Spice", x, (height / 2) - 100);
    text("2-11. MY COLOR", x, (height / 2) - 90);
    text("2-12. Spring of Life", x, (height / 2) - 80);
    //2-13. Magic of Love (Album-mix)は文字が今の条件だと重なる
    text("2-13. Spending all my time", x, (height / 2) - 70);
    text("2-14. Hurly Burly", x, (height / 2) - 60);
    text("2-15. Mirai No Museum", x, (height / 2) - 50);
    text("2-16. Daijyobanai", x, (height / 2) - 40);
    //2-17. Magic of Love (Album-mix)は文字が今の条件だと重なる
    text("2-17. Magic of Love (Album-mix)", x, (height / 2) - 30);
    text("2-18. 1mm", x, (height / 2) - 20);
    text("3-01. Party Maker", x, (height / 2) - 10);
    text("3-02. Sweet Refrain", x, height / 2);
    text("3-03. Cling Cling", x, (height / 2) +10);
    text("3-04. Hold Your Hand", x, (height / 2) +20);
    text("3-05. DISPLAY", x, (height / 2) +30);
    text("3-06. Relax In The City", x, (height / 2) +40);
    text("3-07. Pick Me Up", x, (height / 2) +50);
    text("3-08. STAR TRAIN", x, (height / 2) +60);
    text("3-09. STORY", x, (height / 2) +70);
    text("3-10. FLASH", x, (height / 2) +80);
    text("3-11. TOKYO GIRL", x, (height / 2) +90);
    text("3-12. If you wanna", x, (height / 2) +100);
    text("3-13. Everyday", x, (height / 2) +110);
    text("3-14. Mugenmirai", x, (height / 2) +120);
    text("3-15. FUSION", x, (height / 2) +130);
    text("3-16. Future Pop", x, (height / 2) +140);
    text("3-17. Let Me Know", x, (height / 2) +150);
    text("3-18. Nananananairo", x, (height / 2) +160);
  }
}
