public class RedCircle
{
  //IV
  private float red;
  private float green;
  private float blue;
  private float x;
  private float y;
  
  //constructor
  public RedCircle(float initx, float inity)
  {
    red = random(0,255);
    green = random(0,255);
    blue = random(0,255);
    x=initx;
    y=inity;
  }
  //getters
  public float getX()
  {
    return x;
  }
    public float getY()
  {
    return y;
  }
  //methods
  public void changeColor()
  {
    red += random(-10,10);
    if(red>255 || red < 0) red=200;
    green += random(-10,10);
    if(green>255 || green < 0) green=200;
    blue += random(-10,10);
    if(blue>255 || blue < 0) blue=200;
  }
  public void move()
  {
    x+=random(-8,8);
    y+=random(-8,8);
    if(x>width)x = width;
    if(x<0)x=2;
    if(y>height)y = height;
    if(y<0)y=2;
  }
  public void display()
  {
    fill(red, green,blue,140);
    ellipse(x,y,random(2,12),random(2,12));
  }
}
