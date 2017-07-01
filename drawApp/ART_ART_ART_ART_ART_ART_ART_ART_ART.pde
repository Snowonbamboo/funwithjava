void setup(){
  background(255,255,255);
  size(1000,1000);
  
  line(90,0,90,1000);
 
 
fill(250,0,0);
rect(20,20,50,50);

fill(255,136,0);
rect(20,80,50,50);

fill(255,229,0);
rect(20,140,50,50);

fill(24,229,20);
rect(20,200,50,50);

fill(20,198,229);
rect(20,260,50,50);

fill(0,51,255);
rect(20,320,50,50);

fill(119,4,242);
rect(20,380,50,50);

fill(255,158,251);
rect(20,440,50,50);

fill(0,0,0);
rect(20,560,50,50);

fill(104,69,0);
rect(20,620,50,50);



fill(255,255,255);
rect(20,500,50,50);
textSize(40);
 fill(0,0,0);
 text("A", 32,60);
fill(0,0,0);
 text("S",  35,120);
 fill(0,0,0);
 text("D",  32,180);
 fill(0,0,0);
 text("F",  32,240);
 fill(0,0,0);
 text("G",  32,300);
 fill(0,0,0);
 text("H",  32,360);
 fill(0,0,0);
 text("J",  40,420);
 fill(0,0,0);
 text("K",  32,480);
fill(0,0,0);
 text("L",  32,540);
 fill(255);
 text("Q",  30,597);
 fill(0,0,0);
 text("W",  30,660);
}




void draw() {
  
  if(mousePressed==true && mouseX>100 ){
  strokeWeight(5);
   if (mousePressed == true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
     
  
 


  

  if (keyPressed){
    if(key == 'f' || key == 'F'){
      stroke(24,229,20);
     
    }
  }
 

  if (keyPressed){
    if(key == 'g' || key == 'G'){
      stroke(20,198,229);
 
  }
  }
    

  if (keyPressed){
    if(key == 'h' || key == 'H'){
      stroke(0,51,255);
}
  }

  if (keyPressed){
    if(key == 'J' || key == 'j'){
      stroke(119,4,242);
  }
  }
  

  if (keyPressed){
    if(key == 'K' || key == 'k'){
      stroke(255,158,251);
  

  }
  }
   

  if (keyPressed){
    if(key == 'L' || key == 'l'){
      stroke(255,255,255);
      
    }
  }
    

  
    if(key == 'q' || key == 'Q'){
      stroke(0,0,0);    
    }
 if (keyPressed){
    if(key == 'w' || key == 'W'){
      stroke(104,69,0);
    }
 }
   
  if (keyPressed){
    if(key == 'a' || key == 'A'){
      stroke(250,0,0);
    }
  }
    

  if (keyPressed){
    if(key == 's' || key == 'S'){
      stroke(255,136,0);
     
    }
  }



  if (keyPressed){
    if(key == 'D' || key == 'd'){
      stroke(255,229,0);
    }
  }
    
      
      
}
}