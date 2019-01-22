void bezierCurves() {
  for (int i=1; i<101; i++) {  
    for (int k=2; k< 3; k++) { 
      size = map (float(myData[i][k]), 1000, 30000, 0.1, 3);
   float b = map (float(myData[i][k]), 1000, 30000, 0, 255);
      float r = map (float(myData[i][k]), 1000, 30000, 200, 0);
           float sizeC = map (float(myData[i][k]), 1000, 30000, 0, 10);
    strokeWeight(size);
    stroke(r, 186, b,b);
    fill(r, 186, b);
    ellipse(POStext[i][0], POStext[i][1], sizeC, sizeC);
    bezier(POStext[i][0], POStext[i][1], POStext[i][0], POStext[i][1], LASpos[0][k], LASpos[1][k], LASpos[0][k], LASpos[1][k]);
  }

}
}
