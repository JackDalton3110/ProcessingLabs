class Player
{
  //  Instead of any of the usual variables, we will store a reference to a Box2D Body
  Body body;      
  Vec2 pos;
  float r;
  Vec2 maxVel = new Vec2(10,20);

  Player(float x, float y) 
  {
    r = 40;
    
   
    // Build Body
    BodyDef bd = new BodyDef();      
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(x,y));
    body = box2d.createBody(bd);


    // Define a polygon (this is what we use for a rectangle)
    CircleShape ps = new CircleShape();
   ps.m_radius = box2d.scalarPixelsToWorld(r/2);
   // Box2D considers the width and height of a
         // rectangle to be the distance from the
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
    translate(pos.x,pos.y);    // Using the Vec2 position and float angle to
    rotate(-a);              // translate and rotate the rectangle
    fill(255,0,0);
    stroke(0);
    strokeWeight(2);
    rectMode(CENTER);
    ellipse(0,0,r,r);
    popMatrix();
  }

}