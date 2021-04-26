class Bird
{
  float xPos;
  float yPos;
  float birdFall;
  float ySpeed;
  float jumpBoost;
  float accUp;
  float birdRad;
  PImage bird;
  Bird()
  {
    xPos = width/2;
    yPos = 0;
    birdFall = 3;
    ySpeed = birdFall;
    jumpBoost = -15;
    accUp = 3;
    birdRad = 20;
    bird = loadImage("fatBird.png");
  }

  void drawBird()
  {
    ellipse(xPos, yPos, birdRad, birdRad);
    image(bird, xPos - birdRad/2, yPos - birdRad/2, 43.5, 30 );
  }

  void jumpBird()
  {
    ySpeed = jumpBoost;
  }

  void moveBird()
  {
    yPos = yPos + ySpeed;
  }

  void birdSpeed()
  {
    if (ySpeed < birdFall)
    {
      ySpeed = ySpeed + accUp;
    }
  }

  boolean isCrash(Pipe p)
  {
    if (yPos < p.noPipeMid - p.noPipeExt || yPos > p.noPipeMid + p.noPipeExt) //yPos < p.pipeUpH || yPos > p.pipeDownH
    {
      return true;
    } else
    { 
      return false;
    }
  }
}
