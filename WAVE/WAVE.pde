


  float[] points = new float[125];
  float angle = 0.0;
  float offset = 250;  // y position of wave
  float scalar = 20;
  float sinspeed = 0.05;
  float shift = 10;
void setup()
{
  size(500,500);
}

void draw()
{
  background(0);
  for(int i = 0 ; i < points.length ; i++)
  {
     points[i] = offset + sin(angle + i+shift) * scalar;
     fill(255);
     ellipse ( i*4 , points[i], 4, 4);
     stroke(0,0,255);
     strokeWeight(1);
     line(i*4,height, i*4, points[i]);
  }
  angle += sinspeed;
}
