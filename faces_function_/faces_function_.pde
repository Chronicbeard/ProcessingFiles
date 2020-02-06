void setup()
{
  size(200,120);
  
}

void draw()
{
  dude( mouseX, mouseY );
  
}

void dude( float x, float y)
{
  //head
  ellipse(x, y, width/5, height/5);
  //eyes
  ellipse(x - width/20, y - height/20, width/20, height/20);
  ellipse(x + width/20, y - height/20, width/20, height/20);
  //nose
  ellipse(x, y, width/20, height/20);
  //mouth
  arc( x, y+height/30, width/10, height/20, 0, PI);
  
  
}