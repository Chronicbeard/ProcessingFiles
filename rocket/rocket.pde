void setup() {
  size(480, 480);

}

void draw() {
// This is my rocket

//bod200
fill(9, 153, 88);
noStroke();
rect(200-10,200-20,2*10,10*15);


//nose cone
fill(0, 64, 255);
triangle(200-10,200-2*10,200,200-6*10,200+10,200-2*10);

//fins
stroke(255, 0, 0);
fill(255, 0, 0);
triangle(200-10,200+130,200-30,200+130,200-10,200+100);
triangle(200+10,200+130,200+30,200+130,200+10,200+100);

//Thruster
fill(207, 119, 72);
stroke(227, 227, 95);
strokeWeight(3);
triangle(200-20,200+140,200+20,200+140,200,200+124);

//Fire
fill(255, 162, 0);
strokeWeight(4);
stroke(242, 231, 19);
beginShape(TRIANGLES);
vertex(200-20, 200+140);
vertex(200, 200+140);
vertex(200-10, 200+190);
vertex(200+20, 200+140);
vertex(200, 200+140);
vertex(200+10, 200+190);
endShape(CLOSE);


stroke(255, 0, 0);
strokeWeight(1);
fill(255, 247, 99);
beginShape(TRIANGLES);
vertex(200-12, 200+145);
vertex(200-6, 200+145);
vertex(200-10, 200+165);
vertex(200+12, 200+145);
vertex(200+6, 200+145);
vertex(200+10, 200+165);
endShape(CLOSE);

fill(10, 3, 3);
text("VVVV",200+-17,200+137,33,120);





}
