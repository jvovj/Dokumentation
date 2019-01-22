//Pig flu fight, Homework for Day 5
//Johann Olstowski
//You try to fight the pig-flu-virus insight a patient, by vaccinating the pigs away.
//You can do so by clicking on the pigs
//Because of the limited time, this is just a Version that counts Score-Points and 
//that makes you lose if 5 pigs find their way into the Hand.


PImage arm;
PImage[] pig = new PImage[2];
PImage syringe;
PImage syringe90;
int Nr = 5;
int[] pigX = new int[Nr];
int[] pigY = new int[Nr];
int k=0;
int round = 0;
int Score = 0;
int ySyr = 512;
int xSyr;
int ySyr90 = -138;
int xSyr90;
float speed = 1;
int score=0;
int fail= 5;

void setup() {
  size(1200, 800, P2D);
  PiggiSetup();
  arm = loadImage("fist.png");
  syringe = loadImage("syringe.png");
  syringe90 = loadImage("syringe90.png");
  for (k=0; k<2; k++) {
    pig[k] = loadImage("pig"+k+".png");
  };
}

void draw() {
  background(180);
  Arm();
  Piggies();
  Syringe();
  score();
  //Algorithm for the pigs
  if (frameCount%15 == 0) {
    ySyr = 512;
    ySyr90 = -138;
  }
  if (frameCount%600==0) {
    if (Nr < 10) {
      Nr += 1;
    }
    if (Nr >10 && speed > 2) {
      Nr -= 2;
    }
  }

  if (frameCount%1000==0) {
    if (speed < 3) {
      speed += 1;
    }
    if (frameCount%3000==0) {
      if (speed < 4) {
        speed += 1;
      }
    }
  }
}
