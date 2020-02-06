

void setup()
{
size(1000,1000);
strokeWeight(2);
noLoop();
} // end setup


void draw()
{
  background(0);
  
      for(int i = 0; i < width ; i = i + 20)
      {
        
        stroke(255,255,0);
        line(width/2, height, i, 0);
        stroke(0,255,255);
        line(width/2, 0, i, height);
        stroke(255,0,255);
        line(0, height/2, width, i);
        stroke(0,255,0);
        line(width, height/2, 0, i);
        
      } // end for

      for(int i = 0; i < width ; i = i + 20)
      {
        stroke(255,0,0);
        noFill();
        ellipse(i, i, i,i);
        stroke(0,0,255);
        ellipse(width-i, height-i,i,i);
        stroke(0,255,0);
        ellipse(i,height-i,i,i);
        stroke(0,255,255);
        ellipse(width-i,i,i,i);
      } // end for

} // end draw
