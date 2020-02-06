function Mover (x,y,vx,vy,mass) {
  //construct a Mover object with vectors for position and velocity and acceleration
  this.pos = createVector(x,y);
  this.vel = createVector(vx,vy);
  this.accel = createVector(0,0);
  //Give the Mover mass
  this.mass=mass;
  
  this.applyForce = function (force) {
    var tempForce = p5.Vector.div(force,this.mass);
    this.accel.add(tempForce);
  }
  
  this.bounce = function () {
    if (this.pos.x>windowWidth || this.pos.x<0) {
      this.vel.x *= -1;
    }
    if (this.pos.y>windowHeight || this.pos.y<0) {
      this.vel.y *= -1;
    }
  }
  
  this.update= function() {
    this.applyForce(this.mForce(mouseForce));
    if (this.vel.mag()>maxVel) {
      this.vel.normalize();
      this.vel.mult(maxVel);
    }
    //Comment out bounce to stop from hitting the walls
    this.bounce();
    //add aceleration to velocity
    this.vel.add(this.accel);
    //add velocity to position
    this.pos.add(this.vel);
    //zero out the aceleration in prep for next update
    this.accel.mult(0);
  }
  
  // a function that returns a force vector of given magnitude
  this.mForce = function (mMag) {
    var mPos = createVector(mouseX,mouseY);
    var mForce = p5.Vector.sub(this.pos,mPos).normalize();
    mForce.mult(mMag);
    return mForce;
  }
    
  
}