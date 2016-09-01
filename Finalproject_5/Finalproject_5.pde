float xPos ;
float yPos ;



PImage imgCloud;



class Catcher {
  
  float w;
  float h;

  
  Catcher (float tempW, float tempH) { 
    w = tempW;
    h= tempH;
    xPos=400;
    yPos=400;
  }
  
  void setLocation(float tempX, float tempY) {
    xPos = tempX;
    yPos = tempY;
  }
  
  void display () {
    stroke(0);
    fill(127,103,66);
    rectMode(CENTER);
    
    rect(xPos,yPos+30,w-30,h);
    rect(xPos,yPos+25,w-25,h);
    rect(xPos,yPos+20,w-20,h);
    rect(xPos,yPos+15,w-15,h);
    rect(xPos,yPos+10,w-10,h);
    rect(xPos,yPos+5,w-5,h);
    rect(xPos,yPos,w,h);
   
  }
  boolean intersect (Drop d) {
    float distance = dist(xPos,yPos,d.x,d.y); //d.x and x.y is calculating the distance of the rain drop
    
    if(distance-20/*(-20 because of basket height!)*/<h+d.r) {//calculating the collision distance between w(width of the rect) and distance of r (radius of drop)
      return true;
    }
    
    else {
      return false;
    }
  }
}

class Drop {
  float x,y;
  float speed;
  float r;
  
  Drop() {
    r=6;
    x = random (width);
    y= -10; //??
    speed= random (2,3);
  }
  
  void display () {
    fill(128,198,242);
    noStroke();
    for(int i=2;i<r;i++) { 
      ellipse(x,y+i*4,i*2,i*2);
    }
  }
  
  void move () {
    y+=speed;
  }
  
   boolean reachedBottom () {
    if(y>height+r-10) { //??
      return true;
    }
    else {
      return false;
    }
    }
  
  void caught() {
    speed = 0;
    y = -50;
  }
}

class Timer {
  int savedTime;
  int totalTime;
  
  Timer(int temTotalTime) {
    totalTime = temTotalTime;
  }
  
  void start() {
    savedTime = millis(); 
  }
  
  boolean isFinished() {
    int passedTime = millis() - savedTime;
    if (passedTime>totalTime) {
      return true;
    }
    else {
     return false; 
    }
  }
  
}

Catcher catcher; //catcher object
Timer timer; // one timer object
Drop [] drop; //doing array of drops objectS ... initializing and making the array of 1000 drops
int totalDrops = 0;


void setup () {
  size(800,800);
  frameRate(100);
  
  imgCloud = loadImage("images.png");
  
  //give characteristics to the varibale in the class
  
  catcher = new Catcher(85,20);
  timer = new Timer(300);
  drop = new Drop[1000];
  
  timer.start();
}
  
void draw () {
  background(227,236,242);
  catcher.setLocation(xPos,yPos);
  catcher.display();
  
  
  if(timer.isFinished()) {
    drop[totalDrops] = new Drop();
    totalDrops++;
    if(totalDrops>=drop.length) {
      totalDrops=0;
    }
    timer.start();
  }
  
  for(int i=0;i<totalDrops; i ++) {
    drop[i].display();
    drop[i].move();
    if (catcher.intersect(drop[i])) {
      drop[i].caught();
    }
  }
  image(imgCloud, -65, -45,350,150); // clouds
  image(imgCloud, 200, -35,350,150);
  image(imgCloud, 155, -60,220,100);
  image(imgCloud, 465, -75,350,150);
  image(imgCloud, 620, 10,220,100);
}

void keyPressed(){
  
  if(key == CODED) { 
    if (keyCode == UP) {
      yPos=yPos-40;
    }   
    else if(keyCode == DOWN) {
      yPos=yPos+40;
    
    }
    else if(keyCode == LEFT) {
      xPos=xPos-40;
    }
    else if(keyCode == RIGHT) {
      xPos=xPos+40;
    }
    
     else {
      xPos=xPos+0;
      yPos=yPos+0;
      
  } 
  } 
}