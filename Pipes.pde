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
 
  Pipe()
  {
    //Pipe metrics
    pipeWidth = width/8;
    noPipeExt = height/10;
    noPipeMid = random( 3*(height/10), 7*(height/10));

        //Pipe up details
    pipeX = width - pipeWidth; 
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
    
}
