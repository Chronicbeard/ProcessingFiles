Circle[] circles;
float xPos = 100;
float yPos = 100;
float xBox = 0.1;
float yBox = 0.1;

void setup() 
{
  size(1500,700);
  noStroke();
  circles = new Circle[5000];
  
  for(int i = 0 ; i < circles.length ; i++)
  {
    circles[i] = new Circle( xPos,yPos,random(-2,2), random(-2,2 ) );
  }
  
}

void draw() 
{
  background(0);
  for(int i = 0 ; i < circles.length ; i++)
  {
    circles[i].display();
    circles[i].bounce(xPos-width,xPos+width,yPos-height,xPos+height);
    circles[i].display();
  }
  xPos += xBox;
  yPos += yBox;
  if( xPos < 0 || xPos > width)
  xBox *= -1;
  if( yPos < 0 || yPos > height)
  yBox *= -1; 
  
}
