//Shootingstar that rains down and gifts you +5 Points for hitting it

void Star() {   
  ;
  pushMatrix();
  translate(rain_x, rain_y);
  rotate(frameCount / -300.0);
  stroke(#FAED56, random(55, 255));
  fill(#FAED56);
  star(0, 0, 20, 35, 5); 
  popMatrix();
  rain_y = rain_y + 2;
  if (rain_y > 2000) {      
    rain_x = 630;
    rain_y = 0;
  }
  if ((ball_x <= rain_x+30) && (ball_x >= rain_x-30) && (ball_y <= rain_y + 30) && (ball_y >= rain_y-30)) {
    if (ball_speed_x > 0) {
      runde = runde + 5;
      file = new SoundFile(this, "Star.wav");
      file.cue(6);
      file.play();
      rain_y = 800;
      dummy = true;
    }
    if (ball_speed_x < 0) {
      runde2 = runde2 + 5;
      file = new SoundFile(this, "Star.wav");
      file.cue(6);
      file.play();
      rain_y = 800;
      dummy = true;
    }
    if (ball_speed_x == 0) {
      
    }
  }
}


void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

//growing Text that says "+5" if you hit the Shootingstar
void Bonus() {
  if (dummy == true && ((ball_speed_y < 0 || ball_speed_x > 0))) {
    fill(random(255), random(255), random(255));
    textSize(tsize);
    text("+5", width/2, height/2);
    tsize = tsize + 1;
    if (tsize > 100) {
      dummy = false;
    }
  }
}
