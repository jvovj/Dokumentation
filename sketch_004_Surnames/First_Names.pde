void firstNames() {
  stroke(255);
  textPosY = 0;
  for (int i = 1; i<=37; i++) {
    textAlign(LEFT);
    textPosX = 10;
    textPosY += 20;
    text(myData[i][1], textPosX, textPosY);
    POStext[i][0] = textPosX;
    POStext[i][1] = textPosY;
  }
  textPosY = 0;
  for ( int i = 38; i <= 74; i++) {
    textPosX = 1190;
    textAlign(RIGHT);
    textPosY += 20;
    text(myData[i][1], textPosX, textPosY);
    POStext[i][0] = textPosX;
    POStext[i][1] = textPosY;
  }
  textPosX=60;
  textPosY = 20;
  for ( int i = 75; i <= 87; i++) {
    String currentWord = (myData[i][1]);
    float w = textWidth(currentWord);
    textPosX += w+40;
    textAlign(RIGHT);
    text(myData[i][1], textPosX, textPosY);
    POStext[i][0] = textPosX;
    POStext[i][1] = textPosY;
  }
  textPosX=60;
  textPosY = 740;
  for ( int i = 88; i <csv.length; i++) {
    String currentWord = (myData[i][1]);
    float w = textWidth(currentWord);
    textPosX += w+40;
    textAlign(RIGHT);
    text(myData[i][1], textPosX, textPosY);
    POStext[i][0] = textPosX;
    POStext[i][1] = textPosY;
  }

}
