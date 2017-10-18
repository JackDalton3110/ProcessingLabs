Player p;
Goal g;
Obstacle o;
PVector grav = new PVector(0.0,0.25f);
boolean jumped;
boolean collided;
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
  
  if(p.location.x>=470&&p.location.x<530&&p.location.y>360)
  {
    collided=true;
    p.velocity.x=0;
    p.location.x=460;
  }
  else if(p.location.x>=530&&p.location.x<=580&&p.location.y>360)
  {
    collided=true;
    p.velocity.x=0;
    p.location.x=590;
  }
  else
  {
    collided = false;
  }
  
  
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
    if(p.location.y>360)
    {
      p.jump();
    }
  }
  
  if(key==CODED)
  {
    if(keyCode == RIGHT&&keyPress==false&&collided==false)
    {
      
      keyPress=true;
      
      
      p.velocity.add(p.moveRight); 
      
     
    }
    
    if(keyCode==LEFT&&keyPress==false&&collided==false)
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