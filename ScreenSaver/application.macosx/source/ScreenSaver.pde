// variables
float xPos = 20;
float yPos = 20;
float xSpeed = 23;
float ySpeed = 43;
float size = 2;
float sizeChange = 0.1;
/* there are many built-in variables
* width, height are the dimensions of the canvas
* mouseX, mouseY, pmouseX, pmouseY 
*/
// setup - runs once
void setup()
{
  size(1000,700);
  background(255);
  rectMode( CENTER );
  
}

// draw - runs constantly
void draw()
{
  fill(0,0,0, .5);
  rect(width/2, height/2, width, height);
  fill( yPos % 255, 255-(xPos %255), (xPos+yPos) % 255 , 30);
  ellipse( xPos, yPos, size, size );
  rect(width-xPos, height - yPos, size, size);
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
  size += sizeChange;
  if(size > 100  || size < 1 )
  {
    sizeChange *= -1;
  }
  checkEdge();
}
// methods - procedures to use.

void checkEdge()
{
  if(xPos > width || xPos < 0 )
  {
    xSpeed = xSpeed*(-1);
  }
  if(yPos > height || yPos < 0 )
  {
    ySpeed = ySpeed*(-1);
  }
}
