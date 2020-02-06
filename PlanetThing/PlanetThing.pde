var solarSystem;
var maxVel = 20;
var subPlanets = 50;
var lowerDist = 2;
var upperDist = 200;

//This value affects the attraction strength of mouse cursor
var mouseForce = -.25;

function setup() {
  createCanvas(windowWidth, windowHeight);
  background(100,100,255);
  solarSystem = new SolarSystem();
  //Add planets: Planet (name, x, y, xVel, yVel, mass, size, r, g, b)
  //solarSystem.addPlanet("Sun", windowWidth/2,windowHeight/2, 0,0, 6000, 20, 255,255,0);
  //solarSystem.addPlanet("Earth", 200+windowWidth/2,windowHeight/2, 0,2, 30, 50, 10,100,255);
  //solarSystem.addPlanet("Mars", -200+windowWidth/2,windowHeight/2, 0,2, 40, 25, 255,100,80);
  //solarSystem.addPlanet("Brooklyn", windowWidth/2,200+windowHeight/2, 2,0, 200, 25, 255,100,255)
  
  for (i=0;i<subPlanets;i++) {
    solarSystem.addPlanet("sub "+i+1, random(0,windowWidth), random(0,windowHeight), random(-5,5),
                          random(-5,5), random (.1,1), 100, random(0,255), random(100,255), random(100,255));
  }
  

}

function draw() {
  background(map(solarSystem.energy(),150,400,10,255,1),map(solarSystem.energy(),150,400,80,255,1),
             (map(solarSystem.energy(),150,400,80,90)),50);
  //print ("The "+solarSystem.bodies[1].name+" accel: "+solarSystem.bodies[1].move.accel.x);
  
  solarSystem.applyForces();
  solarSystem.updateAll();
  solarSystem.drawAll();
  //print (solarSystem.energy());
}