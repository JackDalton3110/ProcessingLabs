Player p;
Goal g;

void setup()
{
  size(900,800);
  smooth();
  p = new Player();
  g = new Goal();
}

void draw()
{
  background(50);
  
  stroke(0);
  fill(0);
  rect(0,450,900,400);
  
  
  
  g.display();
  p.display();
}

void keyPressed()
{
  if(keyCode == RIGHT)
  {  
    p.location.x+=10;
  }
  if(keyCode==LEFT)
  {
    p.location.x-=10;
  }
}