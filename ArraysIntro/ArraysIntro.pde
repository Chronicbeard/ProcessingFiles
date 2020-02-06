// setup array(s)
int numb = 500;
int num;
float[] arrayX = new float[numb];
float[] arrayY = new float[numb];
float[] widths = new float[numb];
float[] reds = new float[numb];
float[] greens = new float[numb];
float[] blues = new float[numb];
float[] transp = new float[numb];


void setup()
{
  size(900, 900);
  num = (int)random(0,5);
  for (int i = 0; i < arrayX.length; i++)
  {
    widths[i] = random(1,20);
    reds[i] = random(0,255);
    greens[i] = random(0,255);
    blues[i] = random(0,255);
    arrayX[i] = (float)Math.random()*width;
    arrayY[i] = (float)Math.random()*width;
    transp[i] = random(20,120);
  }
}

void draw()
{
  for (int i = 0; i < arrayX.length; i++)
  {
    strokeWeight(widths[i]);
    stroke(reds[i], greens[i], blues[i], transp[i]);
    fill(255-reds[i],255-greens[i],255-blues[i],transp[i]);
    if(num==0)line(arrayX[i], arrayY[i], width-arrayX[i], width-arrayY[i]);
    if(num==1)line(arrayX[i], 0, arrayX[i], height);
    if(num==2)ellipse(arrayX[i], arrayY[i], widths[i], widths[i]);
    if(num==3)rect(arrayX[i], arrayY[i], widths[i], widths[i]);
    if(num==4)point(arrayX[i], arrayY[i]);
    if(num==5)
    {
      
    }
  }
}
