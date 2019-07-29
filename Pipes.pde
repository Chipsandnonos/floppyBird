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
  
  //image
  PImage topPipe; 
  PImage pipeBody;
  Pipe()
  {
    //Pipe metrics
    pipeWidth = width/8;
    noPipeExt = height/15;
    noPipeMid = random( 3*(height/10), 7*(height/10));

        //Pipe up details
    //pipeX = width - pipeWidth; 
    pipeX = width+1;
    pipeYUp = 0;
    pipeUpH = noPipeMid - noPipeExt;
    
        //Pipe down details (x same)
    pipeDownH = height - (noPipeMid + noPipeExt);
    pipeYDown = height - pipeDownH;
    
    //
    topPipe = loadImage("pipeHead.png");
    pipeBody = loadImage("shaft.png");
  }
  
    void makePipe()
  {
    rect(pipeX,pipeYUp, pipeWidth, pipeUpH);
    image(pipeBody, pipeX, 0, pipeWidth, pipeUpH - 17);
    image(topPipe,pipeX - pipeWidth/5, pipeUpH-18, pipeWidth + 2*pipeWidth/5,20); //need a better way to deal w this
    
   
    rect(pipeX, pipeYDown, pipeWidth, pipeDownH);
    image(pipeBody, pipeX, pipeYDown, pipeWidth, pipeDownH + 17);
    image(topPipe,pipeX - pipeWidth/5, pipeYDown, pipeWidth + 2*pipeWidth/5,20); 
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
