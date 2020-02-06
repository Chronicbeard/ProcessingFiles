Ball myBall;
Ball myBall2;
 
void setup()
{
  size(500,500);
  myBall = new Ball();
  myBall2 = new Ball(100,100,100,255,255,0);
}

void draw()
{
   myBall.display();
   myBall2.display();
}
