function Planet (name, x, y, xVel, yVel, mass, size, r, g, b) {
  //create a Mover object to handle forces and motion
  //function Mover (x,y,vx,vy,mass)
  this.name = name;
  this.move = new Mover(x,y,xVel,yVel,mass);
  this.c = color(r,g,b,100);
  this.r = r;
  this.g = g;
  this.b = b;
  this.size = size;
  
  
  
  this.show = function () {
    stroke(5);
    //fill(this.c);
    
    fill(map(this.move.vel.mag(),0,maxVel,0,255,1),this.g,this.b);
    ellipse(this.move.pos.x,this.move.pos.y,this.size,this.size);
  }
  
}