//(High-)Score Text

void Highscore() {
  fill(0);
  noStroke();
  rectMode(CENTER);
  rect(width/2, 0, 1260, 50);
  fill(255);
  textSize(20);
  textAlign(CENTER);
  text((runde) + ":" + (runde2), width/2, 20);
  textAlign(LEFT);
  text("Score: " + Score1, 20, 20);
  textAlign(RIGHT);
  text("Score: " + Score2, 1240, 20);
}
