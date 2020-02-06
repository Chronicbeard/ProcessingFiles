float sh;
float sl = 0.7;

void setup()
{
  size(1200, 800);
}

void draw()
{ 
  background(255);
  rectMode( CENTER );
  animateGrid(100);
}

void animateGrid(int w)
{
  // x location (columns)
  for (int x = 0; x <= width; x += w)
  {
    // y location (rows)
    for ( int y = 0; y<=height; y +=w)
    {
      fill(255-sh*10, y/2-sh, sh*10, 100);
      rect(x, y, w, w);
      noStroke();
      fill(sh*10, y/2-sh, 255-sh*10, 120);
      ellipse(x, y, sh, sh);
    } // end column
  }//end row
  for (int i = 0; i < width; i +=100 ) 
  {
    strokeWeight(20);
    for (int j = 0; j < width; j++)
    {
      stroke(j%255, 0, 255-j%255, 120);
    }
      line(i, 0, i, height);
    for (int j = 0; j < 255; j++)
    {    
      stroke(j, 0, 0, 120);
    }
      line(0, 0, i, height);
  }
  noStroke();
  sh+=sl;
  if (sh>w || sh < 0) sl = sl*-1;
}
