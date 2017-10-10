Mover m;
Cannon c;

 PVector force = new PVector(0.0,0);
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
   
     force = new PVector(5.0,5.0);
     keypressed=true;
  
      m.applyForce(force);
    
  }
  if(keyCode==UP)
  {
    c.ang-=0.1;
  }
  if(keyCode==DOWN)
  {
    c.ang+=0.1;
  }
  
  
  
 
 
}