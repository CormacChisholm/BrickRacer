class CurbLine extends Block
{
  
  
  void draw()
  {
      
      for(y = 5; y < 710; y +=105)
      {
           //Outer Rectangle
        if( solid)
        {
           stroke(50);
        }
        else 
        {
           stroke(140);
        }
        noFill();
        rect( x, y, 30, 30);
        rect( x, y+70, 30, 30);
      
          //Inner Rectangle
        if(solid)
        {
           fill(50);
        }
        else
        {
           fill(140);
        }
        noStroke();
        rect( x+5, y+5, 21, 21);      
        rect( x+5, y+75, 21, 21);
      
      } 
  }
}
