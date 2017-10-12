class Obstacle
{
  PVector pos;
  
  Obstacle()
  {
    pos = new PVector(500,390);
  }
  
  void display()
  {
    stroke(0);
    fill(0);
    rect(pos.x,pos.y,60,100);
  }
  
}