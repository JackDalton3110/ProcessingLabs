//Jack Dalton
// Example 1-1: Bouncing Ball, no vectors
float x = 100;
float y = 100;
float x2 = 600;
float y2 = 100;
float xspeed = 2.5;
float yspeed = 2;
boolean collided=false;
int wait =millis()+3000;

void setup() {
  size(600, 300);
  smooth();
}

void draw() {
  background(0);
  int m = millis();
  print("timer"+m);
  print("\n");
  int rad = 50;
  int rad2 = 50;
  float minDistance = 49;
  
  if(millis()>wait+1000)
  {
    wait=millis()+4000;
  }
  
  
  float r = (float)100;
  float g = (float) 0;
  float b = (float) 0;

  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;
  x2 = x2 - xspeed;
  y2 = y2 - yspeed;

  if ((x > width) || (x < 24)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 24)) {
    yspeed = yspeed * -1;
  }
   if ((x2 > width) || (x2 < 24)) {
    xspeed = xspeed * -1;
  }
  if ((y2 > height) || (y2 < 24)) {
    yspeed = yspeed * -1;
  }
  
  if(dist(x,y,x2,y2)<minDistance)
  {
    collided=true;
  }
  

    print("wait= " +wait);
    print("\n");
  // Display circle at x location
  stroke(0);
  strokeWeight(2);
  if(collided==true&&m<wait)
  {
    fill(r,g,b);
    yspeed= yspeed * -1;
    xspeed= xspeed * -1;
  }
  else
  {
  fill(255);
  collided=false;
  }
  ellipse(x, y, rad, rad);
  
  stroke(0);
  strokeWeight(5);
  if(collided==true&&m<wait)
 {
    fill(r,g,b);
    yspeed=yspeed*-1;
    xspeed=xspeed*-1;
  }
  else
  {
  fill(144);
  collided=false;
  }
  ellipse(x2,y2,rad2,rad2);
}