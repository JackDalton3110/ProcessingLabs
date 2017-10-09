//Jack Dalton
// Example 1-1: Bouncing Ball, no vectors
Ball[] balls={
  new Ball(100,400,10),
  new Ball(300,600,40),
  new Ball(200,420,20),
  new Ball(150,700,30),
  new Ball(350,700,25),
  new Ball(600,250,15),
  new Ball(150,100,35),
  new Ball(500,390,32),
  new Ball(420,560,28),
  new Ball(750,190,16)
};

void setup() {
  size(1000, 900);
  smooth();
}

void draw() {
  background(0);
  int m = millis();
  print("timer"+m);
  print("\n");
  
  for(Ball b: balls)
  {
    b.update();
    b.display();
    b.checkBoundaryCollision();
  }
  
   balls[0].checkCollision(balls[1]);
   balls[0].checkCollision(balls[2]);
   balls[0].checkCollision(balls[3]);
   balls[0].checkCollision(balls[4]);
   balls[0].checkCollision(balls[5]);
   balls[0].checkCollision(balls[6]);
   balls[0].checkCollision(balls[7]);
   balls[0].checkCollision(balls[8]);
   balls[0].checkCollision(balls[9]);
   balls[1].checkCollision(balls[1]);
   balls[1].checkCollision(balls[0]);
   balls[1].checkCollision(balls[3]);
   balls[1].checkCollision(balls[4]);
   balls[1].checkCollision(balls[5]);
   balls[1].checkCollision(balls[6]);
   balls[1].checkCollision(balls[7]);
   balls[1].checkCollision(balls[8]);
   balls[1].checkCollision(balls[9]);
   balls[2].checkCollision(balls[1]);
   balls[2].checkCollision(balls[0]);
   balls[2].checkCollision(balls[3]);
   balls[2].checkCollision(balls[4]);
   balls[2].checkCollision(balls[5]);
   balls[2].checkCollision(balls[6]);
   balls[2].checkCollision(balls[7]);
   balls[2].checkCollision(balls[8]);
   balls[2].checkCollision(balls[9]);
   balls[3].checkCollision(balls[1]);
   balls[3].checkCollision(balls[2]);
   balls[3].checkCollision(balls[0]);
   balls[3].checkCollision(balls[4]);
   balls[3].checkCollision(balls[5]);
   balls[3].checkCollision(balls[6]);
   balls[3].checkCollision(balls[7]);
   balls[3].checkCollision(balls[8]);
   balls[3].checkCollision(balls[9]);
   balls[4].checkCollision(balls[1]);
   balls[4].checkCollision(balls[2]);
   balls[4].checkCollision(balls[3]);
   balls[4].checkCollision(balls[0]);
   balls[4].checkCollision(balls[5]);
   balls[4].checkCollision(balls[6]);
   balls[4].checkCollision(balls[7]);
   balls[4].checkCollision(balls[8]);
   balls[4].checkCollision(balls[9]);
   balls[5].checkCollision(balls[1]);
   balls[5].checkCollision(balls[2]);
   balls[5].checkCollision(balls[3]);
   balls[5].checkCollision(balls[4]);
   balls[5].checkCollision(balls[0]);
   balls[5].checkCollision(balls[6]);
   balls[5].checkCollision(balls[7]);
   balls[5].checkCollision(balls[8]);
   balls[5].checkCollision(balls[9]);
   balls[6].checkCollision(balls[1]);
   balls[6].checkCollision(balls[2]);
   balls[6].checkCollision(balls[3]);
   balls[6].checkCollision(balls[4]);
   balls[6].checkCollision(balls[5]);
   balls[6].checkCollision(balls[0]);
   balls[6].checkCollision(balls[7]);
   balls[6].checkCollision(balls[8]);
   balls[6].checkCollision(balls[9]);
   balls[7].checkCollision(balls[1]);
   balls[7].checkCollision(balls[2]);
   balls[7].checkCollision(balls[3]);
   balls[7].checkCollision(balls[4]);
   balls[7].checkCollision(balls[5]);
   balls[7].checkCollision(balls[6]);
   balls[7].checkCollision(balls[0]);
   balls[7].checkCollision(balls[8]);
   balls[7].checkCollision(balls[9]);
   balls[8].checkCollision(balls[1]);
   balls[8].checkCollision(balls[2]);
   balls[8].checkCollision(balls[3]);
   balls[8].checkCollision(balls[4]);
   balls[8].checkCollision(balls[5]);
   balls[8].checkCollision(balls[6]);
   balls[8].checkCollision(balls[7]);
   balls[8].checkCollision(balls[0]);
   balls[8].checkCollision(balls[9]);
   balls[9].checkCollision(balls[1]);
   balls[9].checkCollision(balls[2]);
   balls[9].checkCollision(balls[3]);
   balls[9].checkCollision(balls[4]);
   balls[9].checkCollision(balls[5]);
   balls[9].checkCollision(balls[6]);
   balls[9].checkCollision(balls[7]);
   balls[9].checkCollision(balls[8]);
   balls[9].checkCollision(balls[0]);
         
 
  // Add the current speed to the location.

}