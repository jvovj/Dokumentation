//Rainbow Road Pong

//Johann Olstowski

/*Hommage to the Rainbow Road Level in Super Mario 64
 A little Pong Game that uses Teleportation-Walls and Bonuspoints if you hit the Shootingstar
 Restart the Ball from the Center by pressing "Space"
 Turn on the Sound
 
 *NEW It's 2 Player, leftside: Arrow-Keys, rightside: Mouse-Movement
 *There's a Round-Score Counter that shows who's leading
 * Every won round is being counted in the Ipper-Corner of the winning Slider
 *The Ball starts in the direction of the previous loser
 *The Slider are mapped to change color, depending on their y-location and the x-location of the ball
 
 */
 


//Variables
float spieler_x;
float spieler_y;
float spieler_x2;
float spieler_y2;
float ball_y;
float ball_x;
float ball_speed_x;
float ball_speed_y;
float xoff=0;
float KI_x = 1240;
float KI_y = ball_y;
float rain_x;
float rain_y;
float rain_x2;
float rain_y2;
float rain_y3;
float rain_y4;
float randomPosition;
float wall_x;
float wall_x2;
float wall_y1;
float wall_y2;
float Coinflip;
float Disguise;
float r;
float g;
float b;

int runde;
int runde2;
int Score1;
int Score2;
int time;
int blur;
int thick;
int tsize;
int timer;



boolean dummy;

//Imports the Soundfiles
import processing.sound.*;
SoundFile file;

void setup() {
  spieler_x = 20;
  spieler_y = 60;
  spieler_x2 = 1240;
  ball_x = 630;
  ball_y = 350;
  ball_speed_x = -4;
  ball_speed_y = 0;
  runde = 1;
  runde2 = 1;
  rain_x = random(300, 960);
  rain_y = 1000;
  wall_x = random(500, 1010);
  wall_x2 = random(500, 1010);
  wall_y1 = 0;
  wall_y2 = 700;
  Disguise = 0;
  randomPosition = random(50, 400);
  size(1260, 700);
  rectMode(CENTER);
  thick = 2;
  tsize = 1;
  dummy = false;
  Coinflip = random(-4, 4);
  timer = 0;
  Score1 = 0;
  Score2 = 0;
}

void draw() {
  background(0);
  keyPressed();
  Direction();
  Ball();
  Wall();
  Highscore();
  Star();
  Bonus();
  timer = timer + 1;
}
