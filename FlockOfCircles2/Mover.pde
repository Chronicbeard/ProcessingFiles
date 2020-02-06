// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com
// changes made by Ben Smith 02/04/2020

class Mover {

  // The Mover tracks position, velocity, and acceleration 
  PVector position;
  PVector velocity;
  PVector acceleration;
  // The Mover's maximum speed
  float topspeed;
  color myColor;

  Mover() {
    // Start in the center
    position = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    topspeed = 6;
    myColor = color(random(255),random(255), random(255),100);
  }

  void update(int moverX, int moverY) {
    
    // Compute a vector that points from position to mouse
    PVector mouse = new PVector(moverX,moverY);
    acceleration = PVector.sub(mouse,position);
    // Set magnitude of acceleration
    //acceleration.setMag(0.2);
    acceleration.normalize();
    acceleration.mult(0.2);
    
    // Velocity changes according to acceleration
    velocity.add(acceleration);
    // Limit the velocity by topspeed
    velocity.limit(topspeed);
    // position changes by velocity
    position.add(velocity);
  }

  void display() {
    noStroke();
    //strokeWeight(2);
    fill(myColor);
    ellipse(position.x,position.y,15,15);
    stroke(0);
    line(position.x,position.y, width/2,height/2);
  }

}
