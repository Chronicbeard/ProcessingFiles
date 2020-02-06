import cc.arduino.*;
import org.firmata.*;

  
import processing.sound.*;
SoundFile fileTwang;
SoundFile fileFlarp;

void setup() {
  size(1200, 600);
  background(255);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  fileTwang = new SoundFile(this, "twang.mp3");
  fileFlarp = new SoundFile(this, "flarp.mp3");
  
}      

void draw() {
  if(keyPressed)
  {
    if( key == 'a' )
    {
     fill(#C6F5E6);
     ellipse( random(0,width), random(0,height), random(10,200), random(10,200));
     fileTwang.play();
    } // end a key
    if( key == 'f' )
    {
     fill(#F5C6F2);
     rect( random(0,width), random(0,height), random(10,200), random(10,200));
     fileFlarp.play();
    } // end a key
  } // end keypressed
}
