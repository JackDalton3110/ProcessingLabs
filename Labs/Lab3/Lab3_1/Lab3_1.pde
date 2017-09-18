
PVector mouse1;
PVector mouse2;

void setup() {
  size(800,800);
  smooth();
  mouse1=null;
  mouse2=null;
  finished=false;
}

void draw() {
  background(0);
 
  if(finished)
  {
    mouse2.sub(mouse1);
    mouse2.normalize();
    mouse2.mult(100);
    translate(width/2, height/2);
    stroke(255);
    strokeWeight(5);
    line(0,0,mouseX,mouseY);
  }
}

void mouseClicked()
  {
    if(mouse1==null)
    {
      mouse1=new PVector(mouseX,mouseY);
    }
    if(mouse2==null)
    {
      mouse2=new PVector(mouseX,mouseY);
    }
    
    if(mouse1 !=null && mouse2 !=null)
    {
      finished=true;
      
      
    }
    
    
  }