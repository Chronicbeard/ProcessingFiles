
// variables
float x = 200;
float y = 300;
float w = 100;
float h = 100;

// setup
void setup()
{
  size(500, 500);
}
// loop
void draw()
{
// x and y follow mouse
x = mouseX;
y = mouseY;
noStroke();
fill(random(0,255), random (0,255), random (0,255),100);
beginShape();
  vertex(x,y);
  vertex(x+random(-100,100), y);
  vertex(x, y+random(-100,100));
  vertex(x+random(-100,100), y);
  vertex(x, y+random(-100,100));
  vertex(x+random(-100,100),y+random(-100,100));
  vertex(x+random(-100,100), y);
  vertex(x, y+random(-100,100));
  vertex(x+random(-100,100), y);
  vertex(x, y+random(-100,100));
  vertex(x+random(-100,100),y+random(-100,100));
  vertex(x,y);
endShape();
}
