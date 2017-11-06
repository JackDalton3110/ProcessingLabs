import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Player p;
Ground g;
Goal gL;

Box2DProcessing box2d;

void setup()
{
  size(1000,600);
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  
  p = new Player(260,100);
  g = new Ground(100,800);
  gL = new Goal();
  
  
}

void draw() {
  background(133);

  // We must always step through time!
  box2d.step();
  g.display();
  p.display();
  gL.display();
  
 
  // When the mouse is clicked, add a new Box object
  //Box p = new Box(mouseX, mouseY);
  //boxes.add(p);

  // Display all the boxes

  }
  
    void keyPressed()
{
   
  
  if(key==CODED)
  {
    if(keyCode == RIGHT)
    {
      p.applyForce(new Vec2(5,0)); 
    }
    
    else if(keyCode==LEFT)
    {
      if(p.pos.x>0)
      {
      p.applyForce(new Vec2(-5,0));
      }
  
    }
    
    else if(keyCode == UP)
    {
      if(p.pos.y>250)
      {
      p.jump();
      }
    }
  
 }
}