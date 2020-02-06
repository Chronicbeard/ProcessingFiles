size(500, 500);

strokeWeight(8);

for(int i = 20; i < 500 ; i = i+20)

{

line(i, 0, i + i / 2 , height/2);

line(i+i/2, height/2, i  * 1.2 , height);

}