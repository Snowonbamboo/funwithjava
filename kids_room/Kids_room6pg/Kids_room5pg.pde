PVector location;
PVector velocity;

void setup(){
  size(600,600);
  location = new PVector(50,50);
  velocity = new PVector (200,500);  
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
 fill(26,46,81);
rect(0,0,600,600);
fill(112,110,3);
rect(150,0,60,600);
rect(300,0,60,600);
rect(0,0,60,600);
rect(450,0,60,600);
//room
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
rect(130,460,320,70);
fill(255,255,255);
ellipse(150,550, 5,5);
ellipse(300,550,5,5);
ellipse(450,550,5,5);
//will move
fill(229,208,158);
ellipse(300,370,35,50);
ellipse(280,405,5,10);
ellipse(320,405,5,10);
fill(0,0,0);
ellipse(290,375,1,5);
ellipse(305,375,1,5);
line(280,370,290,365);
line(300,365,310,370);
fill(0,0,0);
ellipse(300,380,10,1);
fill(255,255,255);
ellipse(location.x+300,location.y+200,70,100);
ellipse(location.x+250,location.y+220,10,40);
ellipse(location.x+350,location.y+220,10,40);
fill(0,0,0);
ellipse(location.x+285,location.y+190,10,20);
ellipse(location.x+310,location.y+190,10,20);
ellipse(location.x+298,location.y+200,10,10);
fill(71,49,49);
rect(70,200,20,10);
fill(255,255,255);
rect(74,159,10,40);
fill(234,149,11);
ellipse(80,150,5,20);
fill(0,0,0);
     println("mouseX:"+mouseX+",mouseY:"+mouseY);
     fill(0,0,0);
ellipse(location.x+100,location.y+400,70,100);
ellipse(location.x+50,location.y+420,10,40);
ellipse(location.x+150,location.y+420,10,40);
     fill(153,0,0);
ellipse(location.x+77,location.y+370,15,5);
ellipse(location.x+115,location.y+370,15,5);

}