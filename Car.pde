class Car extends Block
{
  boolean CarPosition;
  

  void update()
  {
    if(BlockRacerProject3.checkKey('a') || BlockRacerProject3.checkKey('A'))
    {
      CarPosition = false;
    }
    
    if(BlockRacerProject3.checkKey('d') || BlockRacerProject3.checkKey('D'))
    {
      CarPosition = true;
    }
      
  }
  

  void draw()
  {
    
    
    //true that Car is on right
    if(CarPosition)
    {
     /* stroke(140);
      noFill();
      rect(x-36,y-1,105, 175);*/
        
      //Outer Block
      if (solid)
      {    
        stroke(50);
      }
      else
      {
        stroke(140);
      } 
      noFill();
      rect(x, y, 30, 30);
      rect(x, y+35, 30, 30);
      rect(x-35, y+35, 30, 30);
      rect(x+35, y+35, 30, 30);
      rect(x, y+70, 30, 30);
      rect(x+35, y+105, 30, 30);
      rect(x-35, y+105, 30, 30);
    
        //Inner Block
      if (solid)
      {
        fill(50);
      }
      else
      {
        fill(140);
      } 
      noStroke();
      rect(x+5, y+5, 21, 21);
      rect(x+5, y+40, 21, 21);
      rect(x-30, y+40, 21, 21);
      rect(x+40, y+40, 21, 21);
      rect(x+5, y+75, 21, 21);
      rect(x+40, y+110, 21, 21);
      rect(x-30, y+110, 21, 21);
    }
      //False where Car is on left
    else 
    {
       if (solid)
      {    
        stroke(50);
      }
      else
      {
        stroke(140);
      } 
      noFill();
      rect(x-105, y, 30, 30);
      rect(x-105, y+35, 30, 30);
      rect(x-140, y+35, 30, 30);
      rect(x-70, y+35, 30, 30);
      rect(x-105, y+70, 30, 30);
      rect(x-70, y+105, 30, 30);
      rect(x-140, y+105, 30, 30);
    
        //Inner Block
      if (solid)
      {
        fill(50);
      }
      else
      {
        fill(140);
      } 
      noStroke();
      rect(x-100, y+5, 21, 21);
      rect(x-100, y+40, 21, 21);
      rect(x-135, y+40, 21, 21);
      rect(x-65, y+40, 21, 21);
      rect(x-100, y+75, 21, 21);
      rect(x-65, y+110, 21, 21);
      rect(x-135, y+110, 21, 21);
    }
  }
}  
