// A rectangular box
class Box 
{
  //  Instead of any of the usual variables, we will store a reference to a Box2D Body
  Body body;      
  Vec2 pos;
  float w,h;
  Vec2 maxVel = new Vec2(10,20);

  Box(float x, float y) 
  {
    w = 40;
    h = 40;
   
    // Build Body
    BodyDef bd = new BodyDef();			
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    body = box2d.createBody(bd);


    // Define a polygon (this is what we use for a rectangle)
    PolygonShape ps = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);	// Box2D considers the width and height of a
    ps.setAsBox(box2dW, box2dH);		        // rectangle to be the distance from the
                 					// center to the edge (so half of what we
                					// normally think of as width or height.) 
    // Define a fixture
    FixtureDef fd = new FixtureDef();
    fd.shape = ps;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 1;
    fd.restitution = 0.5;

    // Attach Fixture to Body						   
    body.createFixture(fd);
     
  }
  
  void jump()
  {
    if(body.getLinearVelocity().y<maxVel.y)
    {
    body.setLinearVelocity(new Vec2(body.getLinearVelocity().x,10));
    }
  }

  
  void applyForce(Vec2 force)
  {
    Vec2 f = body.getLinearVelocity();
    if(body.getLinearVelocity().x<10||body.getLinearVelocity().x>-10)
    {
      body.setLinearVelocity(f.add(force));
    }
    
  }
  
  
  
  void display() 
  {
    // We need the Body’s location and angle
    pos = box2d.getBodyPixelCoord(body);		
    float a = body.getAngle();

    pushMatrix();
    translate(pos.x,pos.y);		// Using the Vec2 position and float angle to
    rotate(-a);			        // translate and rotate the rectangle
    fill(255,0,0);
    stroke(0);
    if(pos.x >=755&&pos.x<=850&&pos.y>=250&&pos.y<=310)
    {
      fill(255);
      stroke(255);
    }
    strokeWeight(2);
    rectMode(CENTER);
    rect(0,0,w,h);
    popMatrix();
  }

}