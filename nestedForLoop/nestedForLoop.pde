

void setup()
{
  size(500, 500);
}
  
void draw()
{
  drawGrid(100);
}

void drawGrid(int w)
{
  // x location (columns)
  for (int x = 0; x <= width; x += w)
  {
    // y location (rows)
    for ( int y = 0; y<=height; y +=w)
    {
      
      strokeWeight(2);
      stroke(0);
      rect(x, y, w, w);
    } // end column
  } // end row
}
