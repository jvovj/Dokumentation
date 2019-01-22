// Wall that teleports the ball to another y-Value

void Wall() {
  stroke(random(255), random(255), random(255));
  strokeWeight(thick);
  line(wall_x, wall_y1, wall_x, wall_y2);
  line(wall_x2,wall_y1, wall_x2, wall_y2);

  if ((ball_x > wall_x) && (ball_speed_x > 0) && (timer > 300 && timer <600)) {
    ball_speed_x = -ball_speed_x;
    ball_y = random(700);
    wall_x = 1800;
    runde2 = runde2 +1;
    file = new SoundFile(this, "HEY_7.wav");
    file.play();
  }
  if ((ball_x < wall_x2) && (ball_speed_x < 0) && (timer > 600)) {
   ball_speed_x = -ball_speed_x;
   ball_y = random(700);
   wall_x2 = 200;
   runde = runde +1;
   file = new SoundFile(this, "HEY_7.wav");
   file.play();
   }
  if (timer > 900) {
    timer = 0;
  }
  if (timer == 300)
  {
    wall_x = random(500, 1010);
  }
  if (timer == 600) {
    wall_x2 = random(500, 1010);
  }
  line(Disguise, wall_y1, Disguise, wall_y2);
  Disguise = random(200,1000);
}
