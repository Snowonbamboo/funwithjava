PVector location;
PVector velocity;
PVector loca;
PVector velo;
PVector locate;
PVector veloce;
PVector loc;
PVector vel;
void setup(){
  size(700, 500);
  location=new PVector(-100, 415);
  velocity=new PVector(2.5, 5);
  loca = new PVector(-100, 315);
  velo = new PVector(2.5, 5);
  locate = new PVector(580, 290);
  veloce = new PVector(2.5, 5);
  loc = new PVector(1000, 385);
  vel = new PVector(2.5, 5);
}
void draw(){
  background(203, 231, 242);
  noStroke();
  //ground
  fill(34, 71, 50);
  rect(0, 375, 700, 125);
  //road
  fill(135, 135, 135);
  rect(0, 410, 700, 65);
  
  //building base
  fill(242, 185, 135);
  rect(150, 115, 200, 260);
  rect(350, 250, 150, 125);
  //door(s)
  stroke(226, 226, 226);
  strokeWeight(2);
  fill(250);
  rect(222, 304, 56, 70);
  rect(360, 278, 125, 96);
  line(360, 311, 485, 311);
  line(360, 344, 485, 344);
  noStroke();
  fill(188, 120, 32);
  ellipse(270, 339, 10, 10);
  //windows
   stroke(226, 226, 226);
  strokeWeight(3);
  fill(118, 187, 226);
  rect(180, 140, 50, 60);
  rect(270, 220, 50, 60);
  line(204, 140, 204, 200);
  line(180, 169, 230, 169);
  line(294, 220, 294, 280);
  line(270, 249, 320, 249);
  //tree
  noStroke();
fill(107, 66, 19);
rect(605, 310, 25, 65);
fill(35, 107, 19);
rect(560, 256, 110, 66);
rect(575, 240, 80, 30);
fill(214, 71, 32);
rect(580, 290, 10, 10);
rect(635, 270, 10, 10);
   
  for (int i=1; i<20; i++){
    stroke(252, 208, 63);
    line(40*i, 442.5, 40*i, 442.5);
  }
  
  if (key == 'g' || key =='G'){
    noStroke();
    fill(35, 35, 35);
    rect(360, 278, 125, 97);
    fill(229, 124, 119);
    rect(380, 320, 50, 40);
    fill(99, 99, 99);
    rect(387, 360, 10, 14);
    rect(413, 360, 10, 14);
  }
  
  if (key == 'c' || key == 'C'){
    
    location.x=location.x+velocity.x;
    if(location.x>width){
      location.x=-100;
      location.x=location.x+velocity.x*2;
    }
    loc.x=loc.x-vel.x;
    if(loc.x<-100){
      loc.x=1100;
      loc.x=loc.x-vel.x;
    }
    noStroke();
     fill(150, 78, 58);
rect(loc.x, loc.y, 35, 40);
rect(loc.x, loc.y+20, 80, 20);
rect(loc.x-10, loc.y+20, 10, 20);
triangle(loc.x-10, loc.y+20, loc.x+1, loc.y, loc.x+1, loc.y+20);
fill(99, 99, 99);
rect(loc.x+50, loc.y+32, 10, 15);
rect(loc.x+5, loc.y+32, 10, 15);
      noStroke();
      fill(99, 99, 99);
      rect(location.x+10, location.y+37, 15, 15);
      rect(location.x+55, location.y+37, 15, 15);
       fill(82, 131, 183);
      rect(location.x, location.y, 80, 40);
      rect(location.x+75, location.y+20, 20, 20);
      
     
      
    }
    
 if (key == 'w' || key == 'W'){
   if(loca.x<150){
     loca.x=loca.x+velo.x/1.5;
     
   }
   noStroke();
   fill(186, 111, 98);
rect(loca.x+92.5, loca.y+15, 15, 25);
rect(loca.x+86.5, loca.y+15, 6, 20);
rect(loca.x+108.5, loca.y+15, 6, 20);
fill(86, 105, 137);
rect(loca.x+92.5, loca.y+40, 7.5, 20);
rect(loca.x+100, loca.y+40, 7.5, 20);
fill(242, 225, 203);
ellipse(loca.x+100, loca.y+7, 15, 15);
 }
  
  if (key == 'd' || key == 'D'){
    noStroke();
    fill(35, 35, 35);
    rect(222, 304, 56, 71);
    
  }
  if (key == 't' || key == 'T'){
   
      if(locate.y<370){
        locate.y=locate.y+veloce.y/2;
      }
      noStroke();
fill(107, 66, 19);
rect(605, 310, 25, 65);
fill(35, 107, 19);
rect(560, 256, 110, 66);
rect(575, 240, 80, 30);
fill(214, 71, 32);
rect(635, 270, 10, 10);
rect(locate.x, locate.y, 10, 10);
  }
  if(key == 'n' || key == 'N'){
    background(37, 62, 89);
    fill(242, 245, 247);
    noStroke();
    ellipse(70, 80, 80, 80);
    fill(37, 62, 89);
    ellipse(90, 70, 75, 75);
    noStroke();
  //ground2
  fill(34, 71, 50);
  rect(0, 375, 700, 125);
  //road
  fill(99, 99, 99);
  rect(0, 410, 700, 65);
  
  //building base2
  fill(206, 155, 111);
  rect(150, 115, 200, 260);
  rect(350, 250, 150, 125);
  //door(s)2
  stroke(216, 216, 216);
  strokeWeight(2);
  fill(244);
  rect(222, 304, 56, 70);
  rect(360, 278, 125, 96);
  line(360, 311, 485, 311);
  line(360, 344, 485, 344);
  noStroke();
  fill(188, 120, 32);
  ellipse(270, 339, 10, 10);
  //windows2
   stroke(226, 226, 226);
  strokeWeight(3);
  fill(234, 242, 87);
  rect(180, 140, 50, 60);
  rect(270, 220, 50, 60);
  line(204, 140, 204, 200);
  line(180, 169, 230, 169);
  line(294, 220, 294, 280);
  line(270, 249, 320, 249);
  //tree2
  noStroke();
fill(89, 53, 13);
rect(605, 310, 25, 65);
fill(23, 79, 11);
rect(560, 256, 110, 66);
rect(575, 240, 80, 30);
fill(168, 57, 26);
rect(580, 290, 10, 10);
rect(635, 270, 10, 10);
   
  for (int i=1; i<20; i++){
    stroke(252, 208, 63);
    line(40*i, 442.5, 40*i, 442.5);
  }
  location.x=location.x+velocity.x;
    if(location.x>width){
      location.x=-100;
      location.x=location.x+velocity.x*2;
    }
    loc.x=loc.x-vel.x;
    if(loc.x<-100){
      loc.x=1100;
      loc.x=loc.x-vel.x;
    }
    noStroke();
     fill(135, 69, 51);
rect(loc.x, loc.y, 35, 40);
rect(loc.x, loc.y+20, 80, 20);
rect(loc.x-10, loc.y+20, 10, 20);
triangle(loc.x-10, loc.y+20, loc.x+1, loc.y, loc.x+1, loc.y+20);
fill(234, 242, 87);
rect(loc.x-9, loc.y+22, 7, 9);
fill(71, 71, 71);
rect(loc.x+50, loc.y+32, 10, 15);
rect(loc.x+5, loc.y+32, 10, 15);
      noStroke();
      fill(71, 71, 71);
      rect(location.x+10, location.y+37, 15, 15);
      rect(location.x+55, location.y+37, 15, 15);
       fill(69, 113, 160);
      rect(location.x, location.y, 80, 40);
      rect(location.x+75, location.y+20, 20, 20);
      fill(234, 242, 87);
      rect(location.x+87, location.y+22, 7, 9);
  }
}