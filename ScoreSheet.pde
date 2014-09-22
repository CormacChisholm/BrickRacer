class ScoreSheet
{
  int score; 
  int HiScore;
  int Level;
  int Speed;
  

  void draw()
  {
    PFont myfont;
    myfont = loadFont("Digital-7Mono-48.vlw");
    textFont(myfont,32);
       //draw score partition
    stroke(50);
    strokeWeight(2);
    line(5,5,5,700);
    line(360,5,360,700);
    strokeWeight(1);
    
    fill(50);
    textFont(myfont, 48);
    textSize(24);
    text("Score", 370, 20);
    text("Hi-Score",370,100); 
    text("Next",370, 175);
    text("Level",370,350);
    text("Speed",370,440);
    
    textSize(24);
    text(score, 370, 40);
    text(HiScore, 370, 120);
    if( score >= HiScore )
    {
      HiScore = score;
    }
    textSize(32);
    text(Level, 370, 385);  
    text(Speed, 370, 420);
   
  }
}
