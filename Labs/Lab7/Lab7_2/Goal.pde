class Goal
{
  
  PVector location;
  
  Goal()
  {
    location = new PVector (600,390);
  }
  
  void display()
  {
    fill(50);
    stroke(255);
    rect(location.x,location.y,30,60);
  }
}