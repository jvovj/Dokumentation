//After losing: Restart the Ballmovement by pressing "Space"

void keyPressed() {
  if (keyCode == 32 && ball_x == 630 && ball_y == 350) {


    if (runde2 > runde) {
      ball_speed_x = -4;
    } 
    if (runde > runde2) {
      ball_speed_x = 4;
    }
    
    //random start if equal points
    if (runde == runde2) {
      if (Coinflip > 0.5)
        ball_speed_x = -4;
    }
    if (Coinflip < 0.5) {
      ball_speed_x = 4;
    }

    ball_speed_y = 0;
    runde = 0;
    runde2 = 0;
  }
}
