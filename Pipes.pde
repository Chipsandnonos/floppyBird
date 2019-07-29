class Pipe
{
  // Postion Variables
  float pipeX;
  float pipeYUp;
  float pipeYDown;
  
  // Pipe descriptions
  float pipeWidth;
  float pipeUpH;
  float pipeDownH;
  
  //random components
  float noPipeMid;
  float noPipeExt;
  boolean spawnYet = false;
  Pipe()
  {
    //Pipe metrics
    pipeWidth = width/8;
    noPipeExt = height/8;
    noPipeMid = random( 3*(height/10), 7*(height/10));

        //Pipe up details
    //pipeX = width - pipeWidth; 
    pipeX = width+1;
    pipeYUp = 0;
    pipeUpH = noPipeMid - noPipeExt;
    
        //Pipe down details (x same)
    pipeDownH = height - (noPipeMid + noPipeExt);
    pipeYDown = height - pipeDownH;
    
  }
  
    void makePipe()
  {
    rect(pipeX,pipeYUp, pipeWidth, pipeUpH);
    rect(pipeX, pipeYDown, pipeWidth, pipeDownH);
  }
  
  void movePipe()
  {
    pipeX--;
  }
  
  void spawn()
  {
    spawnYet = true;
  }

    
}
