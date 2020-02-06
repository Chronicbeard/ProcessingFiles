// Example: Two Mouse objects
Mouse myMouse1;
Mouse myMouse2; // Two objects!

void setup() {
  size(800,800);
  // Parameters go inside the parentheses when the object is constructed.
  myMouse1 = new Mouse(color(255,0,0),0,300,2,2); 
  myMouse2 = new Mouse(color(0,0,255),0,600,1,2 );
}

void draw() {
  background(255);
  myMouse1.drive();
  myMouse1.display();
  myMouse2.drive();
  myMouse2.display();
}

// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Mouse { 
  color c;
  float xPos;
  float yPos;
  float xspeed;
  float unit;

  // The Constructor is defined with arguments.
  Mouse(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempUnit) { 
    c = tempC;
    xPos = tempXpos;
    yPos = tempYpos;
    xspeed = tempXspeed;
    unit = tempUnit;
  }

  void display() {
    stroke(0);
    fill(c);
    ellipse(xPos,yPos,unit*40,unit*40);
    fill(c);
    ellipse(xPos-unit*22, yPos-unit*20, unit*20, unit*20);
    fill(c);
    ellipse(xPos+unit*22, yPos-unit*20, unit*20, unit*20);
    
    
  }

  void drive() {
    xPos = xPos + xspeed;
    if (xPos > width) {
      xPos = 0;
    }
  }
  
  void grow() {
    unit = unit + 1;
    if (unit >10) {
      unit = 1;
    }
  }
}