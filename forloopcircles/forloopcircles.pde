
void setup()
{
  size(500,500);
}

void draw()
{
  for(int i = 0 ; i < 501 ; i+=10)
  {
    fill(255-(i/2), i/2, 0, 80);
    ellipse(i, 100, 100, 250);
    fill(i/2, 255-(i/2), 0, 80);
    ellipse(i, 300, 100, 250);
    fill(0, 255-(i/2), i/2, 80);
    ellipse(100, i, 250, 100);
    fill(i/2, 0, 255-(i/2), 80);
    ellipse(300, i, 250, 100);
  }
}
