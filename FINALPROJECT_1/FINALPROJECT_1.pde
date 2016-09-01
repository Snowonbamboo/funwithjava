//click the ball to change the time of day :)

//code
int value = 255;
//night
int r = 0;
int g = 121;
int b = 242;
int rr = 20;
int gg = 204;
int bb = 20;
//clouds
public class Cloud{
  
  color C;
  float xpos;
  float ypos;
  float xspeed;
  
  Cloud(color tempC, float tempXpos, float tempYpos, float tempXspeed){
    
    C=tempC;
    xpos=tempXpos;
    ypos=tempYpos;
    xspeed= tempXspeed;
  }
  public void move(){
    xpos=xpos+xspeed;
   if(xpos-100>500){
     xpos = -500;
     xspeed = 0.25;
   }
  }
  
  void display() {
    noStroke();
    fill(255, 255, 255);
    ellipse(xpos,ypos,200,50); //cloud 1
    ellipse(xpos+80,ypos+75,100,40); //cloud 2
    ellipse(xpos+197,ypos+30,200,100); //cloud 3
    ellipse(xpos+410,ypos+75,125,50); //cloud 4
    ellipse(xpos+385,ypos,200,85); //cloud 5 
  }
}

Cloud myCloud1;

void setup(){
  size(500,500);
  background(0,121,242);
  noStroke();
  myCloud1 = new Cloud(color (250),-500,45,0.25);
}

void mouseReleased() {
  
  if (value == 255 && (mouseX>265 && mouseX<285)&&(mouseY>370 && mouseY<390)) {
    value = 0;
  } else {
    value = 255;
  }
}

void mouseClicked(){
  if(r == 0 && (mouseX>265 && mouseX<285)&&(mouseY>370 && mouseY<390)){
    r = 1;
  } else {
    r = 0;
  }
  if(g == 121 && (mouseX>265 && mouseX<285)&&(mouseY>370 && mouseY<390)){
    g = 1;
  } else {
    g = 121;
  }
  if(b == 242 && (mouseX>265 && mouseX<285)&&(mouseY>370 && mouseY<390)){
    b = 84;
  } else {
    b = 242;
  }
  background(r,g,b);
  
  if (rr == 20 && (mouseX>265 && mouseX<285)&&(mouseY>370 && mouseY<390)){
    rr = 0;
  } else {
    rr = 20;
  }
  if(gg == 204 && (mouseX>265 && mouseX<285)&&(mouseY>370 && mouseY<390)){
    gg = 86;
  } else {
    gg = 204;
  }
  if(bb == 24 && (mouseX>265 && mouseX<285)&&(mouseY>370 && mouseY<390)){
    bb = 0;
  } else {
    bb = 24;
  }
  fill(rr,gg,bb); //green
  rect(0,375,500,100); //grass
}


void draw() {
  background(r,g,b);
  
  myCloud1.move();
  myCloud1.display();
  
  fill(rr,gg,bb); //green
  rect(0,375,500,100); //grass
  fill(value);
  ellipse(275,380,10,10); //ball;
  fill(101,86,117); //gray
  rect(0,450,500,50); //road
  fill(116,59,229); //purple
ellipse(250,367,20,20); //head
stroke(0,0,0);
line(250,400,225,380); //left arm
line(250,400,240,450); //left leg
line(250,400,275,380); //right arm
line(250,400,260,450); //right leg
noStroke();
ellipse(250,400,25,50); //body
fill(244,244,102); //yellow
//ellipse(275,380,10,10); //ball
fill(255);
}