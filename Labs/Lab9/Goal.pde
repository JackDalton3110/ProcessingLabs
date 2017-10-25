// A rectangular box
class Goal {
  PVector location;
  
  Goal()
  {
    location = new PVector (800,296);
  }
  
  void display()
  {
    fill(133);
    stroke(255);
    rect(location.x,location.y,50,50);
  }
}