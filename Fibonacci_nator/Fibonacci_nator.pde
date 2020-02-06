int[] fibonacci = new int[17];
int xPos;
void setup()
{
  size(1000, 1000);
  stroke(255);

  fibonacci[0] = 0;
  fibonacci[1] = 1;

  for ( int i = 2; i < fibonacci.length; i++ )
  {
    //the item in index = index-1 + index - 2
    fibonacci[i] = fibonacci[i-1] + fibonacci[i-2];
  }
}
void draw()
{
  for ( int i = fibonacci.length-1; i > 4; i-- )
  {
    fill(fibonacci[i], 203, 183);
    ellipse(fibonacci[i], mouseX, mouseY, fibonacci[i]);
    
  }
}
