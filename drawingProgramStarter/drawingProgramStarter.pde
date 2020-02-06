

void setup()
{
  size(500,500);
  
} // end setup

void draw()
{ 
  noStroke();
  fill(mouseY, mouseX, 0);
  rect(0, 0, 170, 80);
  fill(0);
  text( "mouse x position " + mouseX, 10, 25);
  text( "mouse y position " + mouseY, 10, 50);
  stroke(mouseX/2,mouseY/2,pmouseX/2);
  //ellipse(mouseX, mouseY, 10, 10 );
  // draw a line from prevX to current X and same for y
  strokeWeight(5);
  line(pmouseX,pmouseY,mouseX,mouseY);

} // end draw