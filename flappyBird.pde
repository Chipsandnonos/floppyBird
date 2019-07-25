Bird b;
Pipe p;
void setup()
{
  size (640, 360);
  b = new Bird();
  p = new Pipe();
}

void draw()
{
  background(50);
  b.drawBird();
  p.makePipe();
  
  
  b.birdSpeed();
  b.moveBird();
  p.movePipe();
 }

void keyPressed()
{
  b.jumpBird();

}

void mousePressed()
{
  Pipe p1;
  p1 = new Pipe();
}
