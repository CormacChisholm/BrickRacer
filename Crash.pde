class Crash extends Block
{
  void crashPt1()
  {
      //OuterRect
    if(solid)
    {
      stroke(50);
    }
    else
    {
      stroke(140);
    }  
    noFill();
    rect(x, y, 30, 30);
    rect(x+105, y, 30, 30);
    rect(x+35, y+35, 30, 30);
    rect(x+70, y+35, 30, 30);
    rect(x+35, y+70, 30, 30);
    rect(x+70, y+70, 30, 30);
    rect(x, y+105, 30, 30);
    rect(x+105, y+105,30,30);
    
      //InnerRect
    if(solid)
    {
      fill(50);
    }
    else
    {
      fill(140);
    }  
    noStroke();
    rect(x+5, y+5, 21, 21);
    rect(x+110, y+5, 21, 21);
    rect(x+40, y+40, 21, 21);
    rect(x+75, y+40, 21, 21);
    rect(x+40, y+75, 21, 21);
    rect(x+75, y+75, 21, 21);
    rect(x+5, y+110, 21, 21);
    rect(x+110, y+110,21,21);
  }
  
  void crashPt2()
  {
      //OuterRect
     if(solid)
    {
      stroke(50);
    }
    else
    {
      stroke(140);
    }  
    noFill();
    rect( x+35, y, 30, 30); 
    rect( x+70, y, 30, 30);
    rect( x, y+35, 30, 30);
    rect( x, y+70, 30, 30);
    rect( x+35, y+105, 30, 30);    
    rect( x+70, y+105, 30, 30);    
    rect( x+105, y+35, 30, 30);
    rect( x+105, y+70, 30, 30);
      //InnerRect
     if(solid)
    {
      fill(50);
    }
    else
    {
      fill(140);
    }    
    noStroke();
    rect( x+40, y+5, 21, 21); 
    rect( x+75, y+5, 21, 21);
    rect( x+5, y+40, 21, 21);
    rect( x+5, y+75, 21, 21);
    rect( x+40, y+110, 21, 21);    
    rect( x+75, y+110, 21, 21);    
    rect( x+110, y+40, 21, 21);
    rect( x+110, y+75, 21, 21);
   
  }
      
 
}
