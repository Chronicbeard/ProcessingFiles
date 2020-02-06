float angle1=0;
float angle2=0;
float angle3=4;
float scalar = 200;
float tracker = 0;
float x = 0;
float r, g, b;
float changer, changeb, changeg;
void setup() {
  size(500, 500);
  background(255);
  strokeWeight(10);
  r = 255; g = 128; b = 0;
  changer=20; changeg=20; changeb=20;
}

void draw() {
  stroke(0);
  float x2 = x + 5;
  float ang1 = radians(angle1);
  float ang2 = radians(angle2);
  float ang3 = radians(angle3);
  float y1 = height/2 + (scalar * sin(ang2));
  float y2 = height/2 + (scalar * sin(ang3));
  stroke(r,g,b);
  line(x, y1, x2, y2);

  angle1 += 3;
  angle2 += 3;
  angle3 = angle2 + 3;
  
  if (x < width + scalar/2) {
    x += 1;

  } else {
    r+=changer;
    g+=changeg;
    b+=changeb;
    if(r>255 || r < 0) changer*=-1;
    if(g>255 || g < 0) changeg*=-1;
    if(b>255 || b < 0) changeb*=-1;
    
    x = 0;

  }  
  tracker++;

}
