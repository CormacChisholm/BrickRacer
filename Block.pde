class Block 
{
  int x;
  int y;
  boolean solid;
 
  Block()
  {
    x = 0;
    y = 0;
    solid = false;
  }
  
  void draw()
  {
      //Outer Block 
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
  }
}
