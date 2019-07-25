class Bird
{
    float xPos;
    float yPos;
    float birdFall;
    float ySpeed;
    float jumpBoost;
    float accUp;
  Bird()
  {
    xPos = width/2;
    yPos = 0;
    birdFall = 3;
    ySpeed = birdFall;
    jumpBoost = -15;
    accUp = 3;
  }
  
  void drawBird()
  {
    ellipse(xPos,yPos,30,30);
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
  
}
