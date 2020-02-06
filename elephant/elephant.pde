// This comment - only people will read this - computer ignores it.
// this is the setup - it runs only one time
int var = 300;
int var2 = 250;
int var3 = 20;
void setup()
{
  // put code here
  size(500, 500 );
  frameRate(60);
}
// this is the draw loop - it runs forever
void draw()
{
  background(110,160,var2);
  //grass
  fill(10,var3, 20);
  rect(0,var2,500,var2);
  //legs
  fill(240, 190, 210);
  rect(100,var, 30, 150);
  rect(var2,var, 30, 150);
  //Body
  ellipse(200,var2, var, var);
  // head
  fill(var2,170,190);
  ellipse(var, var2, var2, 310);
  //eyes
  fill( var3 );
  ellipse( 280, 200, var3, var3);
  ellipse( 320, 200, var3, var3);
  //ears
  fill(170,90,120);
  ellipse(200,var2,75,var2);
  ellipse(400,var2,75,var2);
  //trunk
  rect(290, var2, var3, 220);
  triangle(290, 470, var, 500, 310, 470);
  var++;
  var2--;
  var3++;
}
