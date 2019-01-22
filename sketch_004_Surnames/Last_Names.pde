void lastNames() {
  int namePosY = 400;
  for (int k = 2; k<3; k++) {
    textSize(12);
    text(myData [0][k], width/2-30, namePosY); 
    LASpos [0][k] = width/2-30;
    LASpos [1][k] = namePosY;
    namePosY += 30;
  }
}
