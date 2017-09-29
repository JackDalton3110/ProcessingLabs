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
  
  for(int i =0; i<10;i++)
  {
    balls[0].checkCollision(balls[i]);
    balls[1].checkCollision(balls[i]);
    balls[2].checkCollision(balls[i]);
    balls[3].checkCollision(balls[i]);
    balls[4].checkCollision(balls[i]);
    balls[5].checkCollision(balls[i]);
    balls[6].checkCollision(balls[i]);
    balls[7].checkCollision(balls[i]); 
    balls[8].checkCollision(balls[i]);
    balls[9].checkCollision(balls[i]);
     
  }
  // Add the current speed to the location.

}