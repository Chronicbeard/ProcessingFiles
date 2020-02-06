String text1="";
String[] list = new String[4];


void setup() {
  // nothing 
  size(500, 500);
  list[0] = new String( "Hello, I am Ben" );
  list[1] = new String( "Hello, I am Blog" );
  list[2] = new String( "Hello, I am Beep" );
  list[3] = new String( "Hello, I am Bob" );
}

void draw() {
  if (text1.equals("abcd"))
    println("Hurra!");
}

void keyPressed() {
  text1+=key;
  println (text1);
  text(list[(int)random(0, 3)], 100, 100);
}
