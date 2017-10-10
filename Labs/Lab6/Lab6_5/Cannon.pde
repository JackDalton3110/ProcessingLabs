class Cannon
{
  PShape cannon;
  float ang;
  float rad;
  
  Cannon()
  {
    ang=0;
  }
  
  void update()
  {
    
  }
  
  
  void display()
  {
    
    
    translate(17,365);
    rotate(rad);
    fill(255);
    rect(0,-20,80,30);
    
    
    fill(155,0,0);
    translate(0,90);
    ellipse(0,-95,15,15);
    
    
    
  }
  void keyPressed()
  {
  if(key==38)
    {
     
    }
  }
}