void setup()
{
size( 500, 500 );
}

void draw()
{
triangle( 0, 0, 500, 0, 250, 500);
fill( 255, 255, 0);
ellipse( 250, 155, 300, 300);
fill( mouseX/2 );
ellipse( 250, 155, mouseY, mouseY);
}