Mover m;
Cannon c;

 float force = 0f;
 PVector gravity = new PVector(0,0.1);
 boolean keypressed =false;
 boolean fired  = false;

void setup() {
  size(800,200);
  smooth();
  m = new Mover(); 
  c = new Cannon();
}

void draw() {
  background(255);

 
  if(keypressed)
  {
    m.applyForce(gravity);
  }
  
  

  m.update();
  m.display();
  m.checkEdges();
  
  c.display();

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
    c.rad = (c.ang*3.142/180);
  }
  if(keyCode==DOWN)
  {
    c.ang+=1;
    c.rad = (c.ang*3.142/180);
  }
  if(keyCode==LEFT)
  {
    force-=0.5;
    m.initialVelocity.x = force * cos(c.rad);
    m.initialVelocity.y = force * sin(c.rad);
    
  }
  if(keyCode==RIGHT)
  {
    
    force+=0.5;
    m.initialVelocity.x = force * cos(c.rad);
    m.initialVelocity.y = force * sin(c.rad);
  }
  
  
  
  
  
  
 
 
}