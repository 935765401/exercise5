import processing.sound.*;
SoundFile file;
Amplitude amp;
AudioIn in;
float mval;
void setup()
{
size(640,360);
background(255);

file=new SoundFile(this,"123.mp3");
  amp = new Amplitude(this);
  in = new AudioIn(this);
  in.start();
  amp.input(in);
  file.play();


}
void draw()
{
   fill(255,255,255);
   noStroke();
   rect(0,45,5,80); 
   for(int i=0;i<this.width/5;i++)
   {
    delay(1);
    mval=amp.analyze();
    stroke(200,200,200);
    fill(200,0,0);
    rect(i*50,250-mval*20000,50,50+mval*20000); 
    println(mval);
   }
    
    
}
