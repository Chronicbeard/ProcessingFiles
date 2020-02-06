import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ScreenSaver extends PApplet {

// variables
float xPos = 20;
float yPos = 20;
float xSpeed = 23;
float ySpeed = 43;
float size = 2;
float sizeChange = 0.1f;
/* there are many built-in variables
* width, height are the dimensions of the canvas
* mouseX, mouseY, pmouseX, pmouseY 
*/
// setup - runs once
public void setup()
{
  
  background(255);
  rectMode( CENTER );
  
}

// draw - runs constantly
public void draw()
{
  fill(0,0,0, .5f);
  rect(width/2, height/2, width, height);
  fill( yPos % 255, 255-(xPos %255), (xPos+yPos) % 255 , 30);
  ellipse( xPos, yPos, size, size );
  rect(width-xPos, height - yPos, size, size);
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
  size += sizeChange;
  if(size > 100  || size < 1 )
  {
    sizeChange *= -1;
  }
  checkEdge();
}
// methods - procedures to use.

public void checkEdge()
{
  if(xPos > width || xPos < 0 )
  {
    xSpeed = xSpeed*(-1);
  }
  if(yPos > height || yPos < 0 )
  {
    ySpeed = ySpeed*(-1);
  }
}
  public void settings() {  size(1000,700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "ScreenSaver" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
