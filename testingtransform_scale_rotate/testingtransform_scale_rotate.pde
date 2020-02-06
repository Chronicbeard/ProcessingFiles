float X = 0;
float Y = 0;
float turn = 0;

void setup()
{
  size(500,500);
}

void draw()
{
  translate(100,100);
  rotate(turn);
  scale(2);
  thing();
  turn += 0.01;
}

void thing()
{
  ellipse(X,Y,100,100);
  ellipse(X-20, Y-10, 10,10);
  ellipse(X+20, Y-10, 10,10);
}
