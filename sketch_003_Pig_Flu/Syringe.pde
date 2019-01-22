void Syringe() {
    xSyr = mouseX-20;
    xSyr90 = mouseX-180;
  if (mouseY > 400) {
    image(syringe, xSyr, ySyr, 72, 353);
  } else {
    image(syringe90, xSyr90, ySyr90, 374, 413);
  }
}

void mouseClicked() {

  if (mouseY > 400) {
    for(int i = ySyr; i>392; i--){
      ySyr = i;  }
  } else {
    for(int i = ySyr90; i<-5; i++){
     ySyr90=i; 
 }
  }
  for (int i = 0; i < pigY.length; i++){
    if(mouseX < pigX[i]+50 && mouseX > pigX[i] && mouseY < pigY[i]+40 && mouseY > pigY[i]){
pigX[i] = (int) random(-600,0);
if(fail > 0){
score += 1;}
}
}}
