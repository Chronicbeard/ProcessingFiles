   
OpenProcessing

function SolarSystem() {
  // The array for the planets
  this.bodies = [];
  
  // A function to add new planets
  this.addPlanet = function (name,x,y,xVel,yVel,mass,size,r,g,b) {
    //function Planet (name,x, y, xVel, yVel, mass, size, r, g, b)
    append(this.bodies, new Planet (name, x, y, xVel, yVel, mass, size, r, g, b));
  }
  
  // A function that draws the planets to the window
  this.drawAll = function() {
    for (i=0; i<this.bodies.length; i++) {
      this.bodies[i].show();
    }
  }
  
  // A function that adds the sum of all forces (acceleration) to velocity
  //    then updates position (velocity+position), then zeros acceleration.
  this.updateAll = function() {
    for (i=0; i<this.bodies.length; i++) {
      //Add the current planet's acceleration to its velocity
      this.bodies[i].move.update();
    }
  }
  
  //A function that returns the sum of all bodies.velocities.
  this.energy = function () {
    var totalV=0;
    for (i=0;i<this.bodies.length;i++) {
      totalV += this.bodies[i].move.vel.mag();
    }
    return totalV;
  }
  
  // A function that returns the Force Vector of 1st Planet on 2nd Planet
  this.attraction = function (firstP,secondP) {
    
Settings
Files
Reference
Mode 
v0.6.0
Tabs 
Libraries
p5.dom
v0.6.0 (p5)
p5.sound
v0.6.0 (p5)
p5.collide2d
v0.1
Leap Motion Controller
v0.6.4
p5.serial
v0.0.21
p5.geolocation
v0.5
SocketIO
v1.7.3
Rita.js
v1.1.51
p5.speech
v0.0.1
p5.bots
v0.3.2
p5.play
v3.42cd19
Get Plus+ to add custom libraries
Where is console?       Keyboard Shortcuts

 