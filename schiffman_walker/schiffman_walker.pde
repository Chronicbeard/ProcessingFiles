class Walker
{
  int x,y;
  Walker(){
    x = width/2;
    y = width/2;
  }
  void display()
  {
    stroke(0);
    point(x,y);
  }
  void walk()
  {
    int choice = int(random(4));
    if(choice == 0)
    {
      x++;
    } else if (choice == 1) 
    {
      x--;
    } else if (choice == 2)
    {
      y++;
    } else
    {
      y--;
    }
  }
}

Walker w;
void setup()
{
  size(500,500);
  w = new Walker();
  background(255);
}

void draw()
{
  w.display();
  w.walk();
}
