String location;

void setup()
{
  size(500, 500);
  
  noStroke();
  fill(255);
  
  //head
  ellipse(400, 80, 40, 40);
  //bill
  beginShape();
    vertex( 420, 75 );
    vertex(470, 100);
    vertex(460, 115);
    vertex(410,90);
  endShape();
  ellipse( 465, 107, 17, 17);
  triangle(415, 65, 405, 100, 465, 105);

  //body
  ellipse(280, 260, 200, 160);
  
  // neck
  fill(255,0,0);
  noFill();
  strokeWeight(25);
  stroke(255);
  beginShape();
    vertex(400,80);
    bezierVertex(300,80,380,260,280,260);
  endShape();
  triangle(343,165,268,192,355,239);
  
  
  //eye
  fill(0);
  ellipse(400, 75, 10, 10);
}

void draw()
{
  fill(0);
  noStroke();
  rect(0,0,100,30);
  location = "x: " + mouseX + " y: " + mouseY;
  fill(255);
  text( location, 10,20);
}
