
//Jack Dalton
// Example 1-1: Bouncing Ball, no vectors
float x = 100;
float y = 100;
float xspeed = 2.5;
float yspeed = 2;

void setup() {
  size(800, 200);
  smooth();
}

void draw() {
  background(0);


  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;

  if ((x > width) || (x < 24)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 24)) {
    yspeed = yspeed * -1;
  }


  // Display circle at x location
  stroke(0);
  strokeWeight(2);
  fill(255);
  ellipse(x, y, 48, 48);
}