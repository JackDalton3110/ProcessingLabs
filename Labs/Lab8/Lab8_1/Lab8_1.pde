Mover m;
import processing.video.*;
Movie myMovie;
boolean thrown = false;
boolean throwNow = false;
float force = 23 .0f;
PVector gravity = new PVector(0,0.98);


void setup() {
  size(800, 400);
  myMovie = new Movie(this, "Lab8.mov");
  m = new Mover();
  myMovie.play();

}

void draw() {
  if(millis() > 2300)
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
  
  
  
   if(thrown)
   if(thrown == true && throwNow == false)
   {
     
     m.initialVelocity.x = force * cos(-80*PI/180);
     m.initialVelocity.y = force * sin(-80*PI/180);
     m.applyForce(m.initialVelocity);
     throwNow=true;
   }
}

void movieEvent(Movie m) {
  m.read();
}