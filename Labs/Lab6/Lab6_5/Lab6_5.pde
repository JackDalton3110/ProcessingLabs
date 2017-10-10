Mover m;
Cannon c;
PowerBar power;

 float force = 0f;
 float locX;
 float locY;
 PVector gravity = new PVector(0,0.1);
 boolean keypressed =false;
 boolean fired  = false;

void setup() {
  size(800,400);
  smooth();
  locX = Math.round(random(1,300.0f));
  locY = Math.round(random(1,300.0f));
  m = new Mover(); 
  c = new Cannon();
  power = new PowerBar();
}

void draw() {
  background(255);

 
  if(keypressed)
  {
    m.applyForce(gravity);
  }
  fill(20,100,255);
  ellipse(locX,locY,25,25);
  fill(20,255,255);
  ellipse(locX,locY,10,10);
  
  power.display();
  m.update();
  m.display();
  m.checkEdges();
  
  c.display();
  
if(dist(m.location.x, m.location.y, locX, locY) < 20)
    {
       locX = Math.round(random(300,800.0f));
       locY = Math.round(random(1,200f));
       print("Target Hit");
       print("\n");
    }
    

}

void keyPressed()
{
  if(key==32&&fired==false)
  {
      keypressed=true;
      m.applyForce(m.initialVelocity);
    
  }
  if(keyCode==UP)
  {
    c.ang-=1;
    c.rad = (c.ang * 3.142/180);
  }
  if(keyCode==DOWN)
  {
    c.ang+=1;
    c.rad = (c.ang * 3.142/180);
   
  }
  if(keyCode==LEFT)
  {
    if(force>0.0f)
    {
    power.m_Width-=10;
    force-=0.5;
    }
    
    
  }
  if(keyCode==RIGHT)
  {
    
    if(force<40.0f)
    {
      power.m_Width+=10;
      force+=0.5;
    }
    print(force);
    print("\n");
    
  }
 
    m.initialVelocity.x = force * cos(c.rad);
    m.initialVelocity.y = force * sin(c.rad);
    
  
}