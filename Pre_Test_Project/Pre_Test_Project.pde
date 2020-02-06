// setup function
int xPosition = 0;
int yPosition = 0;
int speed = 10;
void setup()
{
size(500, 500 );
background( 255,0,0 );
}

void draw() 
{
  fill(random(0, 255),random(0, 255),random(0, 255));
  ellipse( xPosition, yPosition, 100, 100);
  xPosition = xPosition + speed;
  yPosition = yPosition + speed+1;
  if( xPosition >= width || yPosition >= height )
  {
    speed = speed * -1;
  }
  if( xPosition <= 0 || yPosition <= 0 )
  {
    speed = speed * -1;
  }
  
}










//float randomNumber1 = random(0, 255);
//float randomNumber2 = random(0, 255);
//float randomNumber3 = random(0, 255);
//fill(randomNumber1, randomNumber2, randomNumber3);
//rect( width*.5 -200,height*.5-200, 400, 400);
//fill(random(0, 255),random(0, 255),random(0, 255));
//ellipse( width*.5, height*.5, 400, 400);
//fill(random(0, 255),random(0, 255),random(0, 255));
//ellipse( width*.5, height*.5, 200, 200);