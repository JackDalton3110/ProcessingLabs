Mover m;
Cannon c;

 PVector wind = new PVector(0.0,0);
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
   
      wind = new PVector(10.0,0);
     keypressed=true;
  
      m.applyForce(wind);
    
  }
 
}