PVector location;
PVector velocity;

void setup(){
size(500,500);
location= new PVector(110, 240);
velocity = new PVector(2, 4);
background(150,150,150);

}




void draw(){
  phone();
  
  
  if(key == 'l' || key == 'L'){
    fill(0);
    stroke(0);
    rect(50,50,124,240);
    fill(0);
    noStroke();
    rect(100,292,20,30);
    fill(200,200,200);
   stroke(0);
    rect(103,290,14,2);
    noStroke();
    fill(40,40,40);
    rect(104,322,12,40);
    quad(104,362,116,362,128,402,116,402);
    rect(116,402,12,98);
    stroke(255);
    fill(100,100,100);
    rect(62,58,100,200);
    fill(70,70,70);
     rect(90,265,40,15);
    fill(150);
     rect(82,170,60,80);
     rect(90,160,44,10);
    
    fill(255);
   text("Charging 0%", 74,150);
        
}

 if(key == 'j' || key == 'J'){
  
     fill(0);
    stroke(0);
    rect(50,50,124,240);
    fill(0);
    noStroke();
    rect(100,292,20,30);
    fill(200,200,200);
   stroke(0);
    rect(103,290,14,2);
    noStroke();
    fill(40,40,40);
    rect(104,322,12,40);
    quad(104,362,116,362,128,402,116,402);
    rect(116,402,12,98);
    stroke(255);
    fill(100,100,100);
    rect(62,58,100,200);
    fill(70,70,70);
     rect(90,265,40,15);
    fill(150);
     rect(82,170,60,80);
     rect(90,160,44,10);
   
   
    fill(255);
   text("Charging 25%", 72,150);
   
   fill(255);
    rect(82,230,60,20);
   
   
   
   
 }
  
  
  if(key == 'h' || key == 'H'){
  
     fill(0);
    stroke(0);
    rect(50,50,124,240);
    fill(0);
    noStroke();
    rect(100,292,20,30);
    fill(200,200,200);
   stroke(0);
    rect(103,290,14,2);
    noStroke();
    fill(40,40,40);
    rect(104,322,12,40);
    quad(104,362,116,362,128,402,116,402);
    rect(116,402,12,98);
    stroke(255);
    fill(100,100,100);
    rect(62,58,100,200);
    fill(70,70,70);
     rect(90,265,40,15);
    fill(150);
     rect(82,170,60,80);
     rect(90,160,44,10);
   
   
    fill(255);
   text("Charging 50%", 72,150);
   
   fill(255);
    rect(82,230,60,20);
    rect(82,210,60,20);
   
   
    
 }
  
  
   
  if(key == 'g' || key == 'G'){
  
     fill(0);
    stroke(0);
    rect(50,50,124,240);
    fill(0);
    noStroke();
    rect(100,292,20,30);
    fill(200,200,200);
   stroke(0);
    rect(103,290,14,2);
    noStroke();
    fill(40,40,40);
    rect(104,322,12,40);
    quad(104,362,116,362,128,402,116,402);
    rect(116,402,12,98);
    stroke(255);
    fill(100,100,100);
    rect(62,58,100,200);
    fill(70,70,70);
     rect(90,265,40,15);
    fill(150);
     rect(82,170,60,80);
     rect(90,160,44,10);
   
   fill(255);
   text("Charging 75%", 72,150);
   
   fill(255);
    rect(82,230,60,20);
    rect(82,210,60,20);
    rect(82,190,60,20);
   
    
 }
  
   
  if(key == 'f' || key == 'F'){
  
     fill(0);
    stroke(0);
    rect(50,50,124,240);
    fill(0);
    noStroke();
    rect(100,292,20,30);
    fill(200,200,200);
   stroke(0);
    rect(103,290,14,2);
    noStroke();
    fill(40,40,40);
    rect(104,322,12,40);
    quad(104,362,116,362,128,402,116,402);
    rect(116,402,12,98);
    stroke(255);
    fill(100,100,100);
    rect(62,58,100,200);
    fill(70,70,70);
     rect(90,265,40,15);
    fill(150);
     rect(82,170,60,80);
     rect(90,160,44,10);
   
    fill(255);
   text("Charging 100%", 70,150);
   
   fill(255);
    rect(82,230,60,20);
    rect(82,210,60,20);
    rect(82,190,60,20);
    rect(82,170,60,20);
     rect(90,160,44,10);
    
 }
  
  
  
if(key == 'k' || key == 'K'){
 
  fill(150,150,150);
  noStroke();
  rect(100,291,50,209);
 stroke(0);
  fill(70,70,70);
  rect(90,265,40,15);
  
  
}



    if(key == 'p' || key == 'P'){
      stroke(170,255,255);
      fill(120,120,120);
   rect(62,60,100,200);
  fill(70,70,70);
  rect(90,265,40,15);
 fill(170,170,170);
  stroke(0);
  rect(63,188,98,70);
  line(80,188,80,258);
  line(100,188,100,258);
  line(120,188,120,258);
  line(140,188,140,258);
  line(63,211,161,211);
  line(63,234,161,234);
  fill(200,200,200);
  rect(63,148,98,30);
  textSize(11);
  fill(20,20,20);
  text("ENTER PASSWORD",65,144);
 
}

   if(key == 'o' || key == 'O'){
      stroke(0);
     
   rect(62,58,100,200);
 
   rect(90,265,40,15);
 
}
 

 if(key == 'i' || key == 'I'){
      stroke(170,255,255);
      fill(163, 242, 255);
   rect(62,58,100,200);
  fill(70,70,70);
   rect(90,265,40,15);
  
   stroke(0);
   fill(255);
   rect(67,64,90,20);
   fill(245,74,142);
   textSize(12);
   text("Google", 70,78);
   ellipse(149,74,5,7);
   stroke(255, 132, 130);
    rect(72,178,20,20);
    fill(255, 181, 79);
    rect(102,178,20,20);
    fill(245,74,142);
    rect(132,178,20,20);
   fill(255, 181, 79);
    rect(132,205,20,20);
    rect(72,205,20,20);
    fill(245,74,142);
    rect(102,205,20,20);
  fill(255);
  stroke(60,60,60); 
    rect(98,230,6,6);
    rect(105,230,6,6);
    rect(112,230,6,6);
    rect(119,230,6,6);
    rect(98,237,6,6);
    rect(105,237,6,6);
    rect(112,237,6,6);
    rect(119,237,6,6);
    rect(98,244,6,6);
    rect(105,244,6,6);
    rect(112,244,6,6);
    rect(119,244,6,6);
    rect(98,251,6,6);
    rect(105,251,6,6);
    rect(112,251,6,6);
    rect(119,251,6,6);
    
    
 }


 
 if (key == 'y' || key == 'Y'){
    
    
    if(location.y>175){
      
      location.y=location.y-velocity.y/3;
  
    }
    
        stroke(0);
        fill(0);
          rect(50,50,124,240);
  
     fill(0, 200, 255);
  rect(62,58,100,200);        
        fill(70,70,70);
        stroke(0,255,0);
  rect(90,265,40,15);
      fill(0,255,0);
      stroke(0);
       rect(62,160,100,98);
    fill(0);
      ellipse(110,175,20,7);
  fill(255);
   rect(109,115,3,60);
  fill(255,0,0);
   triangle(109,115,130,115,109,130);
 fill(255);
 noStroke();
  ellipse(75,80,10,10);
  ellipse(80,75,10,10);
  ellipse(87,75,10,10);
  ellipse(94,75,10,10);
  ellipse(99,80,10,10);
    ellipse(80,80,10,10);
  ellipse(87,80,10,10);
  ellipse(94,80,10,10);
  
  ellipse(80,135,10,10);
  ellipse(85,130,10,10);
  ellipse(92,130,10,10);
  ellipse(99,130,10,10);
  ellipse(104,135,10,10);
    ellipse(85,135,10,10);
  ellipse(92,135,10,10);
  ellipse(99,135,10,10);
  
  ellipse(130,100,10,10);
  ellipse(135,95,10,10);
  ellipse(142,95,10,10);
  ellipse(149,95,10,10);
  ellipse(154,100,10,10);
    ellipse(135,100,10,10);
  ellipse(142,100,10,10);
  ellipse(149,100,10,10);
  
  
  stroke(50,50,50);
  fill(255);
    ellipse(location.x,location.y,9,9);
    
     
    }
    
    if(key == 'u' || key == 'U'){
         stroke(0);
        fill(0);
          rect(50,50,124,240);
  
     fill(0, 200, 255);
  rect(62,58,100,200);        
        fill(70,70,70);
        stroke(0,255,0);
  rect(90,265,40,15);
      fill(0,255,0);
      stroke(0);
       rect(62,160,100,98);
    fill(0);
      ellipse(110,175,20,7);
  fill(255);
   rect(109,115,3,60);
  fill(255,0,0);
   triangle(109,115,130,115,109,130);
 fill(255);
 stroke(70,70,70);
 
 fill(255);
 noStroke();
  ellipse(75,80,10,10);
  ellipse(80,75,10,10);
  ellipse(87,75,10,10);
  ellipse(94,75,10,10);
  ellipse(99,80,10,10);
    ellipse(80,80,10,10);
  ellipse(87,80,10,10);
  ellipse(94,80,10,10);
  
  ellipse(80,135,10,10);
  ellipse(85,130,10,10);
  ellipse(92,130,10,10);
  ellipse(99,130,10,10);
  ellipse(104,135,10,10);
    ellipse(85,135,10,10);
  ellipse(92,135,10,10);
  ellipse(99,135,10,10);
  
  ellipse(130,100,10,10);
  ellipse(135,95,10,10);
  ellipse(142,95,10,10);
  ellipse(149,95,10,10);
  ellipse(154,100,10,10);
    ellipse(135,100,10,10);
  ellipse(142,100,10,10);
  ellipse(149,100,10,10);
  
  
    }
   
   
   if(key == 't' || key == 'T'){
    stroke(0);
        fill(0);
          rect(50,50,124,240);
  
     fill(0, 200, 255);
  rect(62,58,100,200);        
        fill(70,70,70);
        stroke(0,255,0);
  rect(90,265,40,15);
      fill(0,255,0);
      stroke(0);
       rect(62,160,100,98);
    fill(0);
      ellipse(110,175,20,7);
  fill(255);
   rect(109,115,3,60);
  fill(255,0,0);
   triangle(109,115,130,115,109,130);
 fill(255);
 stroke(70,70,70);
 
 fill(255);
 noStroke();
  ellipse(75,80,10,10);
  ellipse(80,75,10,10);
  ellipse(87,75,10,10);
  ellipse(94,75,10,10);
  ellipse(99,80,10,10);
    ellipse(80,80,10,10);
  ellipse(87,80,10,10);
  ellipse(94,80,10,10);
  
  ellipse(80,135,10,10);
  ellipse(85,130,10,10);
  ellipse(92,130,10,10);
  ellipse(99,130,10,10);
  ellipse(104,135,10,10);
    ellipse(85,135,10,10);
  ellipse(92,135,10,10);
  ellipse(99,135,10,10);
  
  ellipse(130,100,10,10);
  ellipse(135,95,10,10);
  ellipse(142,95,10,10);
  ellipse(149,95,10,10);
  ellipse(154,100,10,10);
    ellipse(135,100,10,10);
  ellipse(142,100,10,10);
  ellipse(149,100,10,10);
  stroke(50,50,50);
  ellipse(110,235,9,9);
    }
   
   
}

 void phone(){
  fill(0);
  rect(50,50,124,240);
fill(70,70,70);
  rect(62,58,100,200);

  rect(90,265,40,15);
 


}