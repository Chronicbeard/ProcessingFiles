float x;

float easing = 0.01;

void setup()
{
  size( 500, 500 );
} // end setup

void draw()
{
  float weight = dist(mouseX, mouseY, pmouseX, pmouseY );
  strokeWeight(weight);
  stroke(0,255,0 , 140);
  line(mouseX, mouseY, pmouseX, pmouseY );
  
  
} // end draw