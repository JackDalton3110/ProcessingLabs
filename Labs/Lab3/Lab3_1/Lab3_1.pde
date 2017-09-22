
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
    background(180);
  //  if(finished==true)
  //  {
  //  line(0,0,mouse2.x,mouse2.y);
  //  }
}

void mouseClicked()
  {
    if(mouse1==null)
    {
      mouse1=new PVector(mouseX,mouseY);
      print("mouseX= "+mouseX+" mouseY= "+mouseY );
    }
    else if(mouse2==null )
    {
      mouse2=new PVector(mouseX,mouseY);
      print("Mouse2X ="+mouseX+"Mouse2Y= "+mouseY);
    }
    
    if(mouse1 !=null && mouse2 !=null)
    {
       finished=true;  
       mouse2.sub(mouse1);
    //translate(width/2, height/2);
     strokeWeight(5);
     stroke(255);
     line(0,0,mouse2.x,mouse2.y);
  
    }
    
       
  }
  
  
  