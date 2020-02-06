RedCircle[] mycircles = new RedCircle[2000];

int circleCount;


void setup()
{
  background(0);
  size(1300,900);
  noStroke();
  mycircles[0] = new RedCircle(width/2,height/2);
  circleCount = 1;
}

void draw()
{
 fill(0,7);
 rect(0,0,width,height);
 if(Math.random() < 0.1)
 {
   mycircles[circleCount] = new RedCircle(mycircles[0].getX(), mycircles[0].getY());
   circleCount++;
 }
 for(int i = 0 ; i < circleCount ; i ++ )
  {
    mycircles[i].display();
    mycircles[i].changeColor();
    mycircles[i].move();
  }
  
}
