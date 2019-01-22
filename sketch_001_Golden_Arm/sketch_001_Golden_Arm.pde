void setup() {
  size(600, 800);
}
color gold = color(218, 165, 32);
int value = 0; 

void draw() {
  background(243, 230, 218);

  noStroke();
  fill(32, 76, 121);
  quad(33, 30, 222, 36, 219, 144, 27, 148);

  quad(146, 637, 563, 628, 567, 515, 149, 522);

  fill(1, 1, 1);
  quad(229, 29, 559, 26, 562, 145, 231, 136);

  beginShape();
  vertex(31, 176);
  vertex(573, 172);
  vertex(576, 275);
  vertex(575, 510);
  vertex(452, 501);
  vertex(456, 292);
  vertex(282, 290);
  vertex(25, 289);
  vertex(31, 176);
  endShape();

  //hand
  fill(value);
  beginShape();
  vertex(331, 290);
  vertex(330, 290);
  vertex(322, 362);
  vertex(304, 372);
  vertex(299, 408);
  vertex(323, 411);
  vertex(332, 432);
  vertex(311, 444);
  vertex(312, 436);
  vertex(323, 431);
  vertex(318, 424);
  vertex(312, 455);
  vertex(307, 457);
  vertex(309, 436);
  vertex(307, 437);
  vertex(306, 444);
  vertex(302, 459);
  vertex(298, 460);
  vertex(298, 440);
  vertex(295, 441);
  vertex(288, 463);
  vertex(281, 465);
  vertex(287, 433);
  vertex(270, 424);
  vertex(262, 447);
  vertex(255, 449);
  vertex(261, 407);
  vertex(268, 406);
  vertex(260, 328);
  vertex(279, 310);
  vertex(282, 290);
  endShape();

  fill(1, 1, 1);
  quad(32, 304, 140, 307, 142, 602, 33, 601);
  fill(111, 66, 127);
  quad(43, 653, 573, 646, 579, 742, 37, 744);

  textSize(22);
  fill(218, 165, 32);
  text("THE", 219, 322); 
  text("MAN", 206, 344);
  text("WITH", 205, 369); 
  text("THE", 218, 393);
  text("GOLDEN", 309, 385); 
  text("ARM", 303, 405);
}

void mouseMoved() {
  if (value == 0) {
    value = gold;
  } else {
    value = 0;
  }
}
