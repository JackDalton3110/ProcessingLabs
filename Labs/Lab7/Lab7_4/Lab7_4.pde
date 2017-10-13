Player p;
Goal g;
Obstacle o;
PVector grav = new PVector(0.0,0.25f);
boolean jumped;
 boolean keyPress;

void setup()
{
  size(1200,800);
  smooth();
  p = new Player();
  g = new Goal();
  o = new Obstacle();
  jumped = false;
}

void draw()
{
  background(50);
  
  stroke(0);
  fill(0);
  rect(0,450,1200,400);
  
  
  
  
  if(p.location.y + 10 >390)
  {
    p.velocity.y = 0;
    p.location.y=390;
    jumped=false;
  }
  else
  {
     p.applyForce(grav);
  }
  
  p.update();
  g.display();
  p.display();
  o.display();
    
}

void keyPressed()
{
  
  if(keyCode == UP)
  {
    if(jumped==false)
    {
      p.jump();
      jumped=true;
    }
  }
  
  if(key==CODED)
  {
    if(keyCode == RIGHT&&keyPress==false)
    {
      keyPress=true;
      
      
      p.velocity.add(p.moveRight);
      
      
    }
    
    if(keyCode==LEFT&&keyPress==false)
    {
      keyPress=true;
      
      p.velocity.add(p.moveLeft);
    }
    
  }
}

 void keyReleased()
  {
    if(keyCode == RIGHT)
    {
      keyPress = false;
      p.velocity.x = 0;
    }
    if(keyCode == LEFT)
    {
      keyPress = false;
      p.velocity.x = 0;
    }
  }