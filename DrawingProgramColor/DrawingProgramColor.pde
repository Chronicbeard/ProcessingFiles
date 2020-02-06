void setup()
{
  size(500,500);

}
void draw()
{
  // these are the boxes at the bottom
  fill(255,0,0); //red
  rect(0,450,50,50);
  fill(255,127,0); //orange
  rect(50,450,50,50);
  fill(255,255,0); //yellow
  rect(100,450,50,50);
  
  
  line(pmouseX, pmouseY, mouseX, mouseY);
  
  //if red box
  if( mousePressed && (mouseX > 0 && mouseX < 50) && (mouseY > 450 && mouseY < 500))
  {
    stroke(255,0,0);
  }
  //if orange box
  if( mousePressed && (mouseX > 50 && mouseX < 100) && (mouseY > 450 && mouseY < 500))
  {
    stroke(255,127,0);
  }
  //if yellow box
  if( mousePressed && (mouseX > 100 && mouseX < 150) && (mouseY > 450 && mouseY < 500))
  {
    stroke(255,255,0);
  }

}
