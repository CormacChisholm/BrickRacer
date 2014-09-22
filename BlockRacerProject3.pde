import ddf.minim.*;
Minim minim;
AudioPlayer GameSong;

void setup()
{
  size(505, 710);
  minim = new Minim(this);
  GameSong = minim.loadFile("GameMusic.mp3");
  GameSong.play();
  
  frameRate(30);
  
  blockLVLNo = new Block(); 
  blockBG = new Block();
  blockLVL = new Block();
  
  EnemyCar1 = new Car();
  EnemyCar2 = new Car();
  PlayerCar = new Car();
  
  
  CurbLeft = new CurbLine();
  CurbRight = new CurbLine();
  
  ScoreSheet1 = new ScoreSheet();
  
  crashLeft = new Crash();
  crashRight = new Crash();
  

  
//Initialising 
  blockLVLNo.x = 365;
  blockLVLNo.y = 285;
  blockLVLNo.solid = true;
  
  blockBG.x =10;
  blockBG.y = 5;
  blockBG.solid = false;
 
  blockLVL.x = 365;
  blockLVL.y = 180;
  blockLVL.solid = false;
  
  EnemyCar1.x = 220;
  EnemyCar1.y = 390;
  EnemyCar1.solid = true;
  EnemyCar1.CarPosition = (random(2) < 1);
  
  EnemyCar2.x = 220;
  EnemyCar2.y = 40;
  EnemyCar2.solid = true;
  EnemyCar2.CarPosition = (random(2) < 1);
    
  PlayerCar.x = 220;
  PlayerCar.y = 565;
  PlayerCar.solid = true;
  PlayerCar.CarPosition = true;
  
  CurbRight.x = 325;
  CurbRight.y= 10;
  CurbRight.solid = true;
  
  CurbLeft.x = 10;
  CurbLeft.y = 10;
  CurbLeft.solid = true;

  crashLeft.x = 80;
  crashLeft.y = 530;
  crashLeft.solid = true;  
  
  crashRight.x = 150;
  crashRight.y = 530;
  crashRight.solid = true;
  
  ScoreSheet1.score = 0;
  ScoreSheet1.HiScore = 2100;
  ScoreSheet1.Level = 1;
  ScoreSheet1.Speed = 1;
//End Initallising
}

Block blockLVLNo;
Block blockBG;
Block blockLVL;

Car EnemyCar1;
Car EnemyCar2;
Car PlayerCar;

CurbLine CurbLeft;
CurbLine CurbRight;

ScoreSheet ScoreSheet1;

Crash crashLeft;
Crash crashRight;


static boolean[] keys = new boolean[526];
int counter = 0;
boolean alive = true;



void draw()
{
    //draw the background 
  background(169,184,176);
  


    //draw main background Blocks
  for(blockBG.x =10; blockBG.x < 360; blockBG.x +=35)
  {
    for(blockBG.y =5; blockBG.y < 685; blockBG.y +=35)
    {
      blockBG.draw();
    }
  }
  
    //draw level background blocks
  for(blockLVL.x = 365; blockLVL.x < 490; blockLVL.x += 35)
  {
    for(blockLVL.y = 180; blockLVL.y < 300; blockLVL.y += 35)
    {
      blockLVL.draw();
    }
  }
  blockLVLNo.draw();
  
  CurbLeft.draw();
  CurbRight.draw();
  
  
    //timer
 int timeSecs = millis() / 1000;
 counter++;
 
 if(alive)
 {
    if(counter == 30)
    {
      IncMov();
      counter = counter-30;
    }
     
    if(( PlayerCar.CarPosition /*== true) && ( */== EnemyCar1.CarPosition  )) 
    {
        if(EnemyCar1.y >=  490)
        {
            alive = false;
        }
    }
    else if((PlayerCar.CarPosition/* == true) && (*/  == EnemyCar2.CarPosition  ))
    {
        if(EnemyCar2.y >= 490)
        {    
        alive = false;
        }
    }
    PlayerCar.draw();
    PlayerCar.update();
    PlayerCar.draw();
    ScoreSheet1.score = (timeSecs * 100);
  
    ScoreSheet1.draw();
    EnemyCar1.draw();
    EnemyCar2.draw();

  
   
       //For the purpose of the assignment kills the player after he has fully passed all enemycars 
    if(timeSecs == 30)
    {
       alive = false;
    }  
   
   
 }
 else//Dead
 {
    ScoreSheet1.draw(); 
    posCrash();
 }
}//end Main draw()

 
 
 
  //increments the y coordinate of enemy cars 
void IncMov()
{
  EnemyCar1.y = (EnemyCar1.y +=35);
  EnemyCar2.y = (EnemyCar2.y +=35);
}

  //simulates the crash at the position of PlayerCar
void posCrash()
{
  if(PlayerCar.CarPosition == true)
  {
    if(counter % 4 == 0)
    {
      crashRight.crashPt1();
    }
    else
    {
      crashRight.crashPt2();
    }
  }
  else
  {
    if(counter % 4 == 0)
    {
      crashLeft.crashPt1();
    }
    else
    {
      crashLeft.crashPt2();
    }  
  }
}//end posCrash


static boolean checkKey(int k)
{
  if (keys.length >=k)
  {
    return keys[k];
  }
  return false;
}

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

void stop()
{
  GameSong.close();
  super.stop();
}


