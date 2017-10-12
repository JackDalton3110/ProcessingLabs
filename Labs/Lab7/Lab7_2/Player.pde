class Player
{
  Goal g;
  PVector location;
  
   Player()
  {
    g = new Goal();
    location = new PVector (200 , 390);
  }
  
  void display()
  {
    stroke(255,0,0);
    fill(255,0,0);
    if(location.x > g.location.x-40&&location.x < g.location.x+40)
    {
      stroke(255);
      fill(255);
    }
    rect(location.x,location.y,30,60);
    
    
  }
}