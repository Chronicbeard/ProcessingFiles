size(1000,1000);

color from = color(random(0,255),random(0,255),random(0,255));
color to = color(random(0,255),random(0,255),random(0,255));

for(float i = 0.0 ; i < 1 ; i+=0.01)
{
  strokeWeight(10);
  stroke( lerpColor(from,to,i) );
  line(i*1000,0,i*1000,height);
  
}
