// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com
// Ben Smith changes 2/5/20

// Demonstration of the basics of motion with vector.
// A "Mover" object stores position, velocity, and acceleration as vectors
// The motion is controlled by affecting the acceleration (in this case towards the mouse)

Mover[] movers = new Mover[100];

// random mover
float x;
float y;

void setup() {
  size(1000,800);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(); 
  }
  x=width/2;
  y=height/2;
}

void draw() {
  
  background(255,10);
  x+=random(-20,20);
  y+=random(-20,20);
  if(x > width || x < 0 ) x=width/2;
  if(y > height || y < 0 ) y=height/2;
  for (int i = 0; i < movers.length; i++) {
    movers[i].update((int)x,(int)y);
    movers[i].display(); 
  }
  fill(0);
  ellipse(x,y,10,10);
}
