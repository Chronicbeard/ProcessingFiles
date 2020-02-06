void setup()
{
size(500, 500);
}

void draw()
{
rotate(mouseX / 100.0);
rect(width/2, 0, 250, 20);
}