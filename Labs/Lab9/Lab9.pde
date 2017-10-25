import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

// A list for all of our rectangles
ArrayList<Box> boxes;
Box b;
Obstacle o;
Goal g;
Ground grn;
Wall wallLeft;
Wall wallRight;

Box2DProcessing box2d;    

void setup() {
  size(1000, 600);
  // Initialize and create the Box2D world
  box2d = new Box2DProcessing(this);  
  box2d.createWorld();
  
  b = new Box(200,300);
  o = new Obstacle(410,300);
  g = new Goal();
  grn = new Ground(100,800);
  wallLeft = new Wall(-50,0);
  wallRight = new Wall(1050,0);

  // Create ArrayLists
  boxes = new ArrayList<Box>();
}




void draw() {
  background(133);

  // We must always step through time!
  box2d.step();
  g.display();
  b.display();
  o.display();
  grn.display();
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
      b.applyForce(new Vec2(5,0)); 
    }
    
    else if(keyCode==LEFT)
    {
      if(b.pos.x>0)
      {
      b.applyForce(new Vec2(-5,0));
      }
  
    }
    
    else if(keyCode == UP)
    {
      if(b.pos.y>250)
      {
      b.jump();
      }
    }
  
  }
  



}