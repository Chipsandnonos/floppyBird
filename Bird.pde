class Bird
{
  float xPos;
  float yPos;
  float birdFall;
  float ySpeed;
  float jumpBoost;
  float accUp;
  float birdRad;
  Bird()
  {
    xPos = width/2;
    yPos = 0;
    birdFall = 3;
    ySpeed = birdFall;
    jumpBoost = -15;
    accUp = 3;
    birdRad = 20;
  }

  void drawBird()
  {
    ellipse(xPos, yPos, birdRad, birdRad);
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
