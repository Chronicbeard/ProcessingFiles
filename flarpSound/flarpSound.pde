import processing.sound.*;
SoundFile file;
SoundFile otherFile;
void setup() 
{
  size(500, 500);
  // Load a soundfile from the /data folder of the sketch 
  file = new SoundFile(this, "flarp.mp3");
  otherFile = new SoundFile( this, "squish.mp3");
}      
void draw() 
{
  if(keyPressed && key == ' ')
  {
    file.play();
    delay(500);
  }
    if(keyPressed && key == 's')
  {
    otherFile.play();
    delay(500);
  }
} // end draw
