class Mover {

  PVector location;
  PVector initialVelocity;
  PVector acceleration;
  float mass;

  Mover() {
    location = new PVector(30,160);
    initialVelocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = 1;
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void update() {
    initialVelocity.add(acceleration);
    location.add(initialVelocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,24,24);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = width;
      initialVelocity.x *= -1;
    } else if (location.x < 0) {
      initialVelocity.x *= -1;
      location.x = 0;
    }

    if (location.y > height) {
      initialVelocity.y *= -1;
      location.y = height;
    }

  }

}