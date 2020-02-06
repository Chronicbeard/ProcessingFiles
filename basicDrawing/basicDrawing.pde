
void setup()
{
  size(500, 500);
}

void draw()
{
  if(keyPressed)
  {
    if(key == ' ' )
    {
      background(255);
    }
  } else if(mousePressed)
  {
    noFill();
    noStroke();
  }
  else
  {
  stroke(mouseX, mouseY, 0, 100);
  strokeWeight(30);
  line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
}
