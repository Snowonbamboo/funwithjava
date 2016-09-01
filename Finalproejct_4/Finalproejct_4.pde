float j = 1;
float k = 1;

int R=0;
int G=0;
int B=0;

boolean option1 = false;
boolean option2 = false;
boolean option3 = false;
boolean option4 = false;

boolean cset1 = false;
boolean cset2 = false;
boolean cset3 = false;

void setup(){
  size(700,700);
  frameRate(30);

}

void draw(){
  noStroke();
  
  fill(R,G,B);
  
  if(key == 'r' && keyPressed){
    R+=1;
    if(R>=270){R=0;}}
  if(key == 'g' && keyPressed){
    G+=1;
    if(G>=270){G=0;}}
  if(key == 'b' && keyPressed){
    B+=1;
    if(B>=270){B=0;}}  
  
  if ((mouseX<100)&&(mouseY<60)&&(mousePressed)){
    option1 = true;option2=false;option4=false;}
  
  if ((mouseX>100)&&(mouseX<200)&&(mouseY<60)&&(mousePressed)){
    option2 = true;option1=false;option4=false;}
    
  if ((mouseX>200)&&(mouseX<300)&&(mouseY<60)&&(mousePressed)){
  option3 = true;}
  
  if ((mouseX>300)&&(mouseX<400)&&(mouseY<60)&&(mousePressed)&&(key=='e')){
  option4 = true;option1=false;option2=false;option3=false;}



  if (option1 && mousePressed){
    
    if (key == CODED){if (keyCode == UP && keyPressed){k = k +0.1;}if (keyCode == DOWN && keyPressed){k = k -0.1;}}
    ellipse(mouseX,mouseY,k,k);
  } 
  
  
  if (option2 && mousePressed){
    fill(R,G,B,10);
    //fill(random(255),mouseY%22,mouseX/5,11);
    for(int i=0; i<11; i++){
      if(key == CODED){                
        if (keyCode == UP){
          if (keyPressed){j=j+.01;}
          ellipse(mouseX,mouseY,i*j,i*j);}
        if (keyCode == DOWN){
          if (keyPressed){j=j-.01;}
          ellipse(mouseX,mouseY,i*j,i*j);}
      }
       else ellipse(mouseX,mouseY,i*i,i*i);
    }
  }
  if(option3){ 
    if(key == '1'){ 
      cset1 = true;cset2 = false;cset3 = false;}
    else if(key == '2'){ 
      cset2 = true;cset1 = false;cset3 = false;}    
    else if(key == '3'){ 
      cset3 = true;cset2 = false;cset1 = false;}
      
    if (cset1){  
    R = int(random(256));
    G = mouseY%22;
    B = mouseX/5;
    }
   else if (cset2){
    B = int(random(256));
    R = mouseY%22;
    G = mouseX/5;
    }
    
    else if (cset3){ 
    G = int(random(256));
    B = mouseY%22;
    R = mouseX/5;
    }
    
  }
  
  if (option4){
    fill(255);
    rect(0,0,width,height);
  } 
  
  fill(245,10);
  strokeWeight(10);
  stroke(0);
  
  rect(0,0,100,110);
  rect(100,0,100,110);  
  rect(200,0,100,110);  
  rect(300,0,100,110); 
  rect(500,0,200,110);
  
  fill(0);
  text("solid circles",10,20);
  text("glowey circles",110,20);
  text("press 1,2, or 3",210,20);
  text("erase",310,20);
  text("(hold 'e')",310,35);
  
  text("hold 'up' and 'down' keys",510,20);
  text("to adjust size",510,30);
  text("use r,g, and b",510,50);
  text("to adjust color",510,60);
  text("R = " + R,510,75);
  text("G = " + G,510,85);
  text("B = " + B,510,95);
    
}