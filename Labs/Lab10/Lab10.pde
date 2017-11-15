import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;



Player p;
Goal gL;
Green tg1;
Towers t1;
Towers t2;
Green tg2;
ArrayList <Triangle> points;

int click;

float x1 = 0;
float y1 = 0;
float x2 = 0;
float y2 = 0;
float x3 = 0;
float y3 = 0;


boolean win;
boolean jumped;

Box2DProcessing box2d;

void setup()
{
  size(1000,600);
  jumped=false;
  win = false;
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  
  p = new Player(150,100);
  gL = new Goal();
  tg1 = new Green(150,500);
  t1 = new Towers(400,500);
  t2 = new Towers(800,500);
  tg2 = new Green(600,500);

  points = new ArrayList<Triangle>();
  
  
}

void draw() {
  background(133);

  // We must always step through time!
  box2d.step();
  gL.display();
  p.display();
 
  tg1.display();
  t1.display();
  tg2.display();
  t2.display();
  
  
      if(p.pos.x>940)
      p.applyForce(new Vec2(-5,0)); 
      else if(p.pos.x< 30)
      p.applyForce(new Vec2(5,0));
      else if(p.pos.y<30)
      p.applyForce(new Vec2 (0,-5));
      
  if(p.pos.x >=540 &&p.pos.x<=640 &&
    p.pos.y >=40 &&p.pos.y<=120 )
  {
    win=true;
  }
  
 
      
       for (Triangle tr: points) {
    tr.display();
  }
      
    for (int i = points.size()-1; i >= 0; i--) {
    Triangle tr = points.get(i);
    if (tr.drawn()) {
      points.remove(i);
    }
  }
 
 pushMatrix();
  fill(255,255,0);
  translate(width*0.8, height*0.5);
  rotate(60);
  popMatrix();

 if(win==true)
  {
    textSize(60);
    text("You win!!",300,200);
    fill(0,255,0);
  }
  }
  
    void keyPressed()
{   
    if(keyCode == UP)
    {
      if(jumped==false && p.pos.y >40)
      {
        jumped=true;
        p.jump();
      }
    }
 
}

    void keyReleased()
  {
      if(keyCode == UP)
    {
      if(jumped==true&&p.pos.y <=350)
      {
        jumped=false;
      }
    }
  }

void mouseClicked()
{
  
   if(dist(p.pos.x,p.pos.y,mouseX,mouseY)<10)
   {
     p.applyForce(new Vec2(100,0));
   }
   
  if (click == 0)
  {
   
    x1 = mouseX;
    y1 = mouseY;
    click += 1;
  }
  else if (click == 1)
  {
  
    x2 = mouseX;
    y2 = mouseY;
    click += 1;
  }
  else if (click == 2)
  {
    
    x3 = mouseX;
    y3 = mouseY;
    click += 1;
  }
  else if (click == 3)
  {
  Triangle tr = new Triangle(x1,y1,x2,y2,x3,y3);
  points.add(tr);
  click = 0;
  }
   
  
  
}