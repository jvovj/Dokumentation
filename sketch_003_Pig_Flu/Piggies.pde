void PiggiSetup() {
  for (int i = 0; i < pigY.length; i++) {
    pigX[i] = (int) random (-600,0);   
    pigY[i]= (int) random(279, 470);
  };
}


void Piggies() {
  for (int i = 0; i < pigY.length; i++) {
    if (round <= 30) {
      image(pig [1], pigX[i], pigY[i], 56, 39);
    }
    if (round > 30 && round <= 60) {
      image(pig [0], pigX[i], pigY[i], 56, 39);
    }
    if (pigX[i]>660) {
      pigX[i] = (int) random(-600,0);
      if(fail >0){
      fail -= 1;}
    };  
    pigX[i] += speed;
  };

  if (round >60) {
    round = 0;
  }
if(fail == 0){
textSize(90);
fill(#030CFF);
textMode(CENTER);
text("Game Over", width/2-400, height/2); 
}
  round++;
}
