float x;
float y;
float easing = 0.05;

void setup()
{
  size( 500, 500 );
  
} // end setup

void draw()
{
  if (keyPressed)
  {
    if( key == 'b' )
    {
    background(255,255,0);
    } 
  }
  else
  {
    background(0,0,255);
  }
  // if mouse pressed color is black
  if ( mousePressed == true)
  {
    fill(0);
  }
  // else color is white
  else
  {
    fill(255);
  }
  float targetX = mouseX;
  float targetY = mouseY;
  x = x + (targetX - x) * easing;
  y = y + (targetY - y) * easing;
  
  ellipse(x, y, 20,20 );
  println(targetX + " : " + x );
  
} // end draw
