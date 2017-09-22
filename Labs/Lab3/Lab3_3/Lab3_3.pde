// Demonstration of the basics of motion with vector.
// A "Mover" object stores position, velocity, and acceleration as vectors
// The motion is controlled by affecting the acceleration (in this case towards the mouse)

Mover mover = new Mover();

void setup() {
  size(640,360);
  
    
  
}

void draw() {
  
  background(255);

  
    mover.update();
    mover.display(); 

}