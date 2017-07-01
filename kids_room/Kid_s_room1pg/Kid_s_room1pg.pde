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
 fill(26,46,81);
rect(0,0,600,600);
fill(112,110,3);
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
line(470,440,475,445);
line(470,465,475,460);
ellipse(470,449,5,5);
ellipse(470,457,5,5);
fill(0,0,0);
ellipse(470,447,3,3);
ellipse(470,455,3,3);
line(450,445,460,460);
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
ellipse(location.x-20,location.y+50,5,20);
fill(255,255,255);
ellipse(475,397,45,35);
ellipse(472,425,10,10);
fill(0,0,0);
 text("Help!",460,400);
    text(mouseX,mouseY,800,800);
    
     println("mouseX:"+mouseX+",mouseY:"+mouseY);
     fill(153,0,0);
ellipse(location.x+250,location.y+470,20,5);
ellipse(location.x+290,location.y+470,20,5);

}