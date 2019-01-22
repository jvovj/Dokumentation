void score() {
  noStroke();
  fill(#81DCFF,90);
  rect(0, 0, 1200, 40);
  textSize(32);
  fill(#FF9090);
  text(score, 10, 30); 

  textSize(20);
  fill(#FF0313);
  text("lives: "+fail, 1120, 30);
}
