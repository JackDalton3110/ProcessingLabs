class Player
{
  Goal g;
  PVector location;
  float mass;
  PVector force;
  PVector acceleration;
  PVector initialVelocity;
  PVector velocity;
  PVector moveRight;
  PVector moveLeft;
 

  
   Player()
  {
    mass = 1.0;
    moveRight = new PVector(2,0);
    moveLeft = new PVector(-2,0);
    force = new PVector(0,-10);
    acceleration = new PVector(0,0);
    initialVelocity = new PVector(0.0f,0.0f);
    velocity = new PVector(0,0);
    g = new Goal();
    location = new PVector (200 , 390);
  }
  
  void update() 
  {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void applyForce(PVector force)
  {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void display()
  {
    stroke(255,0,0);
    fill(255,0,0);
    if(location.x > g.location.x-40&&location.x < g.location.x+40)
    {
      stroke(255);
      fill(255);
    }
    
 
    rect(location.x,location.y,30,60);  
  }
  
  void jump()
  {
    applyForce(force);
  }
  
 
}