class Goal
{
  Goal()
  {
    
  }
  
  void display()
  {
    pushMatrix();
    //rotate(frameCount / 0.1);
    star(600, 100, 25, 60, 5); 
    popMatrix();
  }
  
  void star(float x, float y, float radius1, float radius2, int npoints) 
  {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
    fill(255,255,0);
  }
  endShape(CLOSE);
  }
}