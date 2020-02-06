float x;
float y;
float xS;
float yS;
float changeX;
float changeY;
float sensitivity = 20;
void setup()
{
  size(500,500);
  x = 0;
  y = 0;
  xS = 1;
  yS = 3;
}

void draw()
{
  fill(0,30);
  rect(0,0,width,height);
  fill(255);
  ellipse(x,y,20,20);
  isOnEdge();
  x+=xS;
  y+=yS;
  mouseLoc();
}

void isOnEdge()
{
  if (x<0 || x>width ) xS*=-1;
  if (y<0 || y>height) yS*=-1;
}

void mouseLoc()
{
    changeX = mouseX-x;
    changeY = mouseY-y;
    xS = changeX/sensitivity;
    yS = changeY/sensitivity;
}
