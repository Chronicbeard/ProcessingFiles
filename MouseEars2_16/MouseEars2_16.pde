float xPos = 0;
float yPos = 0;
float unit = 5.78;
float speedX = 20;
float speedY = 0.9;

void setup() {
size(800,800);
}

void draw() {

//background(255, 255, 0);
fill(c);
ellipse(xPos,yPos,unit*40,unit*40);
fill(speedX*10, yPos, xPos);
ellipse(xPos-unit*22, yPos-unit*20, unit*20, unit*20);
fill(xPos, yPos, xPos/yPos);
ellipse(xPos+unit*22, yPos-unit*20, unit*20, unit*20);
xPos = xPos + speedX;
yPos = yPos + speedY;
unit = unit - 0.012;
if (xPos >800) {
    speedX = speedX *(-1);
} else if (xPos < 1) {
    speedX = speedX *(-1);
}
if (yPos >800) {
    speedY = 0;
    speedX = 0;
    unit = unit + 0.012;
}
};