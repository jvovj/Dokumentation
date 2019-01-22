//Ball and Sidebar

//Ball
void Ball() {
  pushMatrix(); 
  translate(ball_x, ball_y); 
  noStroke();
  fill(random(255), random(255), random(255));
  beginShape(); 
  for (float a=0; a<TWO_PI; a+=0.05) {
    float offset=map(noise(xoff), -0.1, 0.1, -1, 1); 
    float Radius=5/2+offset; 
    float x=Radius*cos(a); 
    float y=Radius*sin(a); 
    vertex(x, y); 
    xoff+=0.1;
  } 
  endShape(); 
  popMatrix();

  //Sidebar
  r = map(spieler_y, 0, 700, 255, 0);
  g = map(ball_x, 0, 1260, 0, 255);
  b = map(spieler_y, 0, 700, 0, 255);
  fill(r, g, b, 200);
  strokeWeight(0.5);
  stroke(b,g,r);
  rect(spieler_x, spieler_y, 20, 100);
  rect(spieler_x2, spieler_y2, 20, 100);
  spieler_y2 = mouseY;
  fill(255);
}


//Sidebar and Ball Properties
void Direction() {
  if (keyPressed) {
    if (keyCode == DOWN) {
      if (spieler_y < 650) {
        spieler_y = spieler_y + 15;
      }
    }
  }
  if (keyPressed) {
    if (keyCode == UP) {
      if (spieler_y > 80) {
        spieler_y = spieler_y - 15;
      }
    }
  }
  ball_x = ball_x + ball_speed_x;
  ball_y = ball_y + ball_speed_y;
  //Links
  if (ball_x < 30) {
    if (ball_y <(spieler_y + 55) && ball_y > (spieler_y - 55)) {
      ball_speed_x = (-ball_speed_x) + 1;
      ball_speed_y = ball_speed_y - (spieler_y-ball_y) * 0.1;
      runde = runde + 1;
      file = new SoundFile(this, "sidebar.wav");
      file.play();
    } else {
      file = new SoundFile(this, "Fail.wav");
      file.play();
      ball_x = 630;
      ball_y = 350;
      ball_speed_x = 0;
      ball_speed_y = 0;
      if (runde > runde2) {
        Score1 = Score1 + 1;
      }
      if (runde < runde2) {
        Score2 = Score2 + 1;
      }
    }
  }

  if (ball_y > 695 || ball_y < 30) {
    ball_speed_y = -ball_speed_y;
  }
  if (ball_x > 1255) {
    ball_speed_x = -ball_speed_x;
  }


  //Rechts
  if (ball_x > 1230) {
    if (ball_y <(spieler_y2 + 55) && ball_y > (spieler_y2 - 55)) {
      ball_speed_x = (-ball_speed_x) - 1;
      ball_speed_y = ball_speed_y - (spieler_y2 - ball_y) * 0.1;
      runde2 = runde2 + 1;
      file = new SoundFile(this, "sidebar.wav");
      file.play();
    } else {
      file = new SoundFile(this, "Fail.wav");
      file.play();
      ball_x = 630;
      ball_y = 350;
      ball_speed_x = 0;
      ball_speed_y = 0;
      if (runde > runde2) {
        Score1 = Score1 + 1;
      }
      if (runde < runde2) {
        Score2 = Score2 + 1;
      }
    }
  }
}
