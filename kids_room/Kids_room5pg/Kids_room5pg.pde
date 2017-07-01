PVector location;
PVector velocity;

void setup(){
  size(600,600);
  location = new PVector(100,100);
  velocity = new PVector (800,0);  
}
void draw(){
  size(600,600);
background(255);
noFill();
  location.x=location.x+velocity.x;
  location.y=location.y+velocity.y;
  
  if(location.x>width || (location.x<0)){
    velocity.x = -velocity.x;

}

  
  if((location.y>height) || (location.y<0)){
    velocity.y =-velocity.y;
  }

  
  stroke (0);
 fill(23,94,209);
rect(0,0,600,600);
fill(237,220,66);
rect(150,0,60,600);
rect(300,0,60,600);
rect(0,0,60,600);
rect(450,0,60,600);
fill(255,255,255);
rect(0,550,600,60);
fill(71,49,49);
rect(100,300,30,300);
rect(500,300,30,300);
ellipse(115,300,45,45);
ellipse(515,300,45,45);
fill(0,0,0);
rect(130,540,370,60);
fill(255,255,255);
rect(130,500,370,60);
fill(68,65,140);
rect(130,460,370,60);
rect(130,460,370,60);
fill(25,61,49);
rect(130,440,320,70);
fill(255,255,255);
ellipse(150,550, 5,5);
ellipse(300,550,5,5);
ellipse(450,550,5,5);
//will move
fill(229,208,158);
ellipse(470,450,50,35);
ellipse(440,445,10,5);
ellipse(440,455,10,5);
ellipse(470,449,5,5);
ellipse(470,457,5,5);
fill(0,0,0);
ellipse(470,447,3,3);
ellipse(470,455,3,3);
ellipse(455,451,1,10);
fill(255,255,255);
fill(71,49,49);
rect(70,200,20,10);
fill(255,255,255);
rect(74,159,10,40);
fill(234,149,11);
ellipse(location.x-20,location.y+50,5,20);
fill(255,255,255);
ellipse(400,340,200,35);
ellipse(330,370,10,10);
fill(229,208,158);
ellipse(300,370,35,50);
ellipse(280,405,5,10);
ellipse(320,405,5,10);
fill(255,255,255);
ellipse(290,375,5,5);
ellipse(305,375,5,5);
fill(0,0,0);
line(285,370,295,365);
line(300,365,310,370);
//
ellipse(300,382,5,5);
ellipse(290,375,2,2);
ellipse(305,375,2,2);
fill(0,0,0);
 text("It was nothing. Go back to sleep.",307,344);
    text(mouseX,mouseY,800,800);
    
     println("mouseX:"+mouseX+",mouseY:"+mouseY);
     fill(153,0,0);


}