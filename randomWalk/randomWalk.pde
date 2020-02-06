float x;
float y;
float transparency;
float shade1;
float shade2;
float shade3;
String redVal;
String greenVal;
String blueVal;

void setup() {
  size(800, 800);
  
  //start in middle of screen
  x = width/2;
  y = height/2;
  shade1 = 1;
  shade2 = 128;
  shade3 = 254;
  
  background( shade2, shade2, shade2);
}

void draw() {

  //randomly move the point
  x = x + random(-15, 15);
  y = y + random(-15, 15);
  
  //wrap left and right
  if(x < 0){
    x = width;
  }
  if(x > width){
    x = 0;
  }

  //wrap top and bottom
  if(y < 0){
    y = height;
  }
  if(y > height){
    y = 0;
  }
  
  //randomly change the color
  shade1 = shade1 + random(-7, 7);
  shade2 = shade2 + random(-5, 5);
  shade3 = shade3 + random(-6, 6);
  
  //don't let the color go outside the bounds
  if(shade1 < 0){
    shade1 = 0;
  }
  if(shade1 > 255){
    shade1 = 255;
  }
  
    //don't let the color go outside the bounds
  if(shade2 < 0){
    shade2 = 0;
  }
  if(shade2 > 255){
    shade2 = 255;
  }
  
    //don't let the color go outside the bounds
  if(shade3 < 0){
    shade3 = 0;
  }
  if(shade3 > 255){
    shade3 = 255;
  }
  
  //set the color
  strokeWeight( random( 1,40 ) );
  transparency += random(-10,10);
  if(transparency < 0)
    transparency = 1;
  if(transparency > 255)
    transparency = 254;
  stroke(shade1, shade2, shade3, transparency);
  
  //draw the point
  point(x, y);
  point(y, x);
  point(width-x, height-y);
  point(width-y, height-x);


  
  ////record and display value
  //redVal = "red: " + (int)shade1;
  //greenVal = "green: " + (int)shade2;
  //blueVal = "blue: " + (int)shade3;
  //fill( 0 );
  //rect( 0,0, 100, 80);
  //fill( 255 );
  //text( redVal, 20, 20);
  //text( greenVal, 20, 40);
  //text( blueVal, 20, 60);
  
}
