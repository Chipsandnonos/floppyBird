Bird b; //<>// //<>// //<>// //<>//
int col;
//Pipe[] pipes = new Pipe[3]; array of objects
ArrayList<Pipe> pipes; //decalres arraylist
//array lists can have anything in them, but <> specifies only 1 type of thing which will be allowed 

float count;
// good thing about array lists is that with them you can easily and or remove stuff from them, unlike regular arrays
void setup()
{
  size (640, 360);
  b = new Bird();

  pipes = new ArrayList<Pipe>(); //initializes array list
  pipes.add( new Pipe()); // adds a new pipe object to the array list
}

void draw()
{
  background(50);
  
  b.birdSpeed();
  b.moveBird();
  boolean crashed;

  for (int i = 0; i<pipes.size(); i++) //will draw and move every pipe in the  array
  {
    Pipe p = pipes.get(i);

    p.movePipe();
    if (p.pipeX < -p.pipeWidth)  //
    {
      pipes.remove(i);
    } else if (p.pipeX <= 0 && p.spawnYet == false)
    {
      pipes.add( new Pipe());
      p.spawnYet = true; // to make sure that 1 pipe can not spawn multiple others, only 1
    } else if ((p.pipeX  + (1/2)*(p.pipeWidth) < width/2)&& count == 0 )
    {
      pipes.add( new Pipe());
      count++; 

      // a counter as the loop seems to start over when a new object is added, so this prevents the same pipe triggering it again
    }


    if ((b.xPos + b.birdRad/2 > p.pipeX && b.xPos - b.birdRad/2 < p.pipeX + p.pipeWidth)&&b.isCrash(p))
    {
      background(255,0,0);
    }

    p.makePipe();
  }
  /*
 for (Pipe p : pipes) //enhanced for loop, will do everything for the entire array!, better version of the above
   { //You CANNOT edit the array list with this type of loop
   p.makePipe();
   p.movePipe(); //<>//
   } //<>//
   */
   b.drawBird();
}

void mousePressed()
{
  b.jumpBird();
}
// 1) Declare array list
// 2) Initialize Array List
// 3) Use, add(), get(), remove(), size()
