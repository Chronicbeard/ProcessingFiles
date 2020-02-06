float xPos;
float yPos;

void setup()
{
    size( 1000, 800);
    xPos = 0;
    yPos = 0;
} // end setup

void draw()
{
    if(mousePressed)
    {
        fill(0);
        stroke( 255 );
        xPos += random (5);
        yPos -= random (5);
    } else {
        fill(255);
        stroke( 0 );
        xPos += random (5);
        yPos += random (5);
    }
    ellipse( xPos, yPos , 50, 50 );

    if(xPos > width)
    {
      xPos = 0;
    }
    if(yPos > height)
    {
      yPos = 0;
    }
        if(xPos < 0)
    {
      xPos = width;
    }
    if(yPos < 0)
    {
      yPos = height;
    }
} // end draw