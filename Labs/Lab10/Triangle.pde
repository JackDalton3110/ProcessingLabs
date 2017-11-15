class Triangle
{
  Body body;
  int click;
  
  Triangle(float x1,float y1,float x2,float y2,float x3,float y3)
  {
    Vec2[] points = new Vec2[3];
    points[0] = box2d.vectorPixelsToWorld(new Vec2(x1, y1));
    points[1] = box2d.vectorPixelsToWorld(new Vec2(x2, y2));
    points[2] = box2d.vectorPixelsToWorld(new Vec2(x3, y3));
    
    PolygonShape pgs = new PolygonShape();
    pgs.set(points, points.length);
    
    BodyDef bd = new BodyDef(); 
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(new Vec2(0,0)));
    body = box2d.createBody(bd);
    
    body.createFixture(pgs,1.0);
  }
  
  void destroyBody()
  {
    box2d.destroyBody(body);
  }
  
  boolean drawn() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Is it off the bottom of the screen?
    if (pos.y > height) {
      destroyBody();
      return true;
    }
    return false;
  }
  
  // Drawing the box
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Get its angle of rotation
    float a = body.getAngle();

    Fixture f = body.getFixtureList();
    PolygonShape ps = (PolygonShape) f.getShape();


    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(150);
    stroke(0);
    strokeWeight(2);
    beginShape();
    //println(vertices.length);
    // For every vertex, convert to pixel vector
    for (int i = 0; i < ps.getVertexCount(); i++) {
      Vec2 v = box2d.vectorWorldToPixels(ps.getVertex(i));
      vertex(v.x, v.y);
    }
    endShape(CLOSE);
    popMatrix();
  }
  
 //<>// //<>//
}