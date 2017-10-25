import processing.video.*;

Mover m;
Movie myMovie;
boolean thrown = false;
boolean throwNow = false;
float force = 23.5f;
PVector gravity = new PVector(0, 0.98);

void setup() {
  size(600, 350);
  myMovie = new Movie(this, "Lab8.mov");
  m = new Mover();
  myMovie.play();
}

void draw() {
  if (millis() > 2300)
  {
    thrown=true;
  }

  if (thrown == true)
  {
    m.applyForce(gravity);
  }
  image(myMovie, 0, 0);
  m.update();
  m.display();

  if (thrown == true && throwNow == false)
  {

    m.initialVelocity.x = force * cos(-83*PI/180);
    m.initialVelocity.y = force * sin(-83*PI/180);
    m.applyForce(m.initialVelocity);
    throwNow=true;
  }
}

void movieEvent(Movie m) {
  m.read();
}