Player p;
Goal g;
Obstacle o;

void setup()
{
  size(1200,800);
  smooth();
  p = new Player();
  g = new Goal();
  o = new Obstacle();
}

void draw()
{
  background(50);
  
  stroke(0);
  fill(0);
  rect(0,450,1200,400);
  
  
  
  g.display();
  p.display();
  o.display();
}

void keyPressed()
{
  if(keyCode == RIGHT&&p.location.x!=o.pos.x-30)
  {  
    p.location.x+=10;
  }
  if(keyCode==LEFT)
  {
    p.location.x-=10;
  }
}