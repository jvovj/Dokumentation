//MR. & MRS. SMITH
//Johann Olstowski
//100 most common Surnames in Combination with the Family-Name SMITH (in the USA)
// move the Mouse to the center to see the names, attached to the dots
// the thicker the line, the more people in the USA with this name combination


//import processing.pdf.*;

String csv[];
String myData[][];
PFont mapFont;
int textPosX;
int textPosY;
int[][] POStext;
int[][] LASpos;
float size;
float SmithSize;
int Op = 255;


void setup() {
  textPosX = 10;
  textPosY = 0;
  size(1200, 800);
  textAlign(RIGHT);
  smooth();
  //noLoop();
  POStext = new int[101][2];
  LASpos = new int[2][21];
  mapFont=createFont("Gotham", 12);
  csv = loadStrings("NameCombinations.csv");
  myData = new String[csv.length][21];
  for ( int i= 0; i < csv.length; i++) {
    myData[i] = csv[i].split(";");
  }
}

void draw() {
  //beginRecord(PDF, "SurnameCombinations.pdf");

  background(#303B40);
  firstNames();
  lastNames();
  bezierCurves();
  fill(255, Op);
  firstNames();
  lastNames();
  if (mouseX < 600 && mouseX > 200) {
    Op = 255;
  } else Op = 0;
  //endRecord();

}
