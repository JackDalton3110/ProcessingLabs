class Mover {

  // The Mover tracks position, velocity, and acceleration 
  PVector position;
  PVector velocity;
  PVector acceleration;
  // The Mover's maximum speed
  float topspeed;

  Mover() {
    // Start in the center
    position = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    topspeed = random(20.0);
    print(topspeed);
    print(acceleration);
  }

  void update() {
    
    // Compute a vector that points from position to mouse
    PVector mouse = new PVector(mouseX,mouseY);
    acceleration = PVector.sub(mouse,position);
    // Set magnitude of acceleration
    acceleration.normalize();
    acceleration.mult(0.2*random(5));
    
    // Velocity changes according to acceleration
    velocity.add(acceleration);
    // Limit the velocity by topspeed
    velocity.limit(topspeed);
    // position changes by velocity
    position.add(velocity);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127,200);
    ellipse(position.x,position.y,48,48);
    print(acceleration);
    print("\n");
  }

}