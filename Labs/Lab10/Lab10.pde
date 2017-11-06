import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;



Player p;
Goal gL;
Green tg1;
Towers t1;
Towers t2;
Green tg2;

Box2DProcessing box2d;

void setup()
{
  size(1000,600);
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  
  p = new Player(150,100);
  gL = new Goal();
  tg1 = new Green(150,500);
  t1 = new Towers(400,500);
  t2 = new Towers(800,500);
  tg2 = new Green(600,500);
  
  
  
}

void draw() {
  background(133);

  // We must always step through time!
  box2d.step();
  p.display();
  gL.display();
  tg1.display();
  t1.display();
  tg2.display();
  t2.display();
  
 
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