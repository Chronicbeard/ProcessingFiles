public class Ball
{
  // attributes of a ball:
  // radius
  // x and y positions
  // color (r g and b values)
  
  private float radius;
  private int x;
  private int y;
  private int red;
  private int green;
  private int blue;
  
  // how to construct a new ball
  public Ball()
  {
    radius = 50;
    x = width/2;
    y = height/2;
    red = 128;
    green = 128;
    blue = 128;
  }
  
  // how to construct a new ball with all six arguments
  public Ball(float rad, int xPos, int yPos, int r, int g, int b)
  {
    radius = rad;
    x = xPos;
    y = yPos;
    red = r;
    green = g;
    blue = b;
  }

  public void display()
  {
    fill(red,green,blue);
    ellipse(x,y,radius,radius);
  }
}
