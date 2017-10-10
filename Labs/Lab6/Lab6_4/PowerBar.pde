class PowerBar
{
 
  float m_Width;
  
  PowerBar()
  {
    m_Width=0;
  }
  
  void update()
  {
    
  }
  
  
  void display()
  {
    
    stroke(0);
    strokeWeight(10);
    fill(255,10,30);
    rect(0,0,m_Width,5);
    
  }
 
}