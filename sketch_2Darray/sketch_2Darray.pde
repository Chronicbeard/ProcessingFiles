int[][] array = new int[50][50];
int count = 0;
void setup()
{
  size(500,500);
    for(int i = 0 ; i < 50 ; i++)
  {
    for(int j = 0 ; j < 50 ; j++ )
    {
      count++;
      array[i][j] = count;
      strokeWeight(count/200);
      ellipse( i*10, j*10 , 10,10);
      fill(i/2, 500-(i/2), 100, 80);
    }
  }
}

void draw()
{
  

}
