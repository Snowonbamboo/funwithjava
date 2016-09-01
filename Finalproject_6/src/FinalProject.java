import processing.core.PApplet;

public class FinalProject extends PApplet{
	public static void main (String[] args){
		PApplet.main("FinalProject");
	}

float frogx; 
float frogy;
float frogspeed;

int lives=3;

float carx1;
float carx2;
float carx3;
float carx4;
float carx5;
float carx6;
float carx7;
float carx8;
float carx9;
float carx10;
float carx11;
float carx12;
float carx13;
float carx14;
float carx15;
float carx16;
float carx17;
float carx18;
float carx19;
float carx20;

float cary1;
float cary2;
float cary3;
float cary4;
float cary5;
float cary6;
float cary7;
float cary8;
float cary9;
float cary10;

float myX;
float myY;

	
	class beginning{
		public void display(){
			fill(88,226,63);
			rect(250,480,500,40);
		}
	}
	
	class finish{
		
		public void display(){
			fill(63,177,226);
			rect(250,20,width,50);	
		}
	}
	
	class cars{
		float carspeed1;
		float carspeed2;
		float carspeed3;
		float carspeed4;
		float carspeed5;
		float carspeed6;
		float carspeed7;
		float carspeed8;
		float carspeed9;
		float carspeed10;
		
		public cars(){
			carx1 = random(-60,-20);
			carx2 = random(520,560);
			carx3 = random(-60,-20);
			carx4 = random(520,560);
			carx5 = random(-60,-20);
			carx6 = random(520,560);
			carx7 = random(-60,-20);
			carx8 = random(520,560);
			carx9 = random(-60,-20);
			carx10 = random(520,560);
			carx11 = random(-400,-360);
			carx12 = random(660,700);
			carx13 = random(-400,-360);
			carx14 = random(660,700);
			carx15 = random(-400,-360);
			carx16 = random(660,700);
			carx17 = random(-400,-360);
			carx18 = random(660,700);
			carx19 = random(-400,-360);
			carx20 = random(660,700);
			cary1 = 70;
			cary2 = 110;
			cary3 = 150;
			cary4 = 190;
			cary5 = 230;
			cary6 = 270;
			cary7 = 310;
			cary8 = 350;
			cary9 = 390;
			cary10 = 430;
			carspeed1=6;
			carspeed2=5;
			carspeed3=6;
			carspeed4=5;
			carspeed5=4;
			carspeed6=3;
			carspeed7=2;
			carspeed8=2;
			carspeed9=3;
			carspeed10=2;

		}
		
		public void carrow1(){
			fill(214,42,153);
			rect(carx1,cary1,50,30);
			if (carx1 >width+300){
				carx1 = random(-20,-60);
			}
			carx1 += carspeed1;
		}
		public void carrow2(){
			fill(255,150,24);
			rect(carx2,cary2,50,30);
			if (carx2<-300){
				carx2 = random(520,560);
			}
			carx2 -= carspeed2;
		}
		public void carrow3(){
			fill(214,42,153);
			rect(carx3,cary3,50,30);
			if (carx3 > width+300){
				carx3 = random(-20,-60);

			}
			carx3 += carspeed3;
		}
		public void carrow4(){
			fill(255,150,24);
			rect(carx4,cary4,50,30);
			if (carx4<-300){
				carx4 = random(520,560);
			}
			carx4 -= carspeed4;
		}
		public void carrow5(){
			fill(214,42,153);
			rect(carx5,cary5,50,30);
			if (carx5 > width+300){
				carx5 = random(-20,-60);
			}
			carx5 += carspeed5;
		}
		public void carrow6(){
			fill(255,150,24);
			rect(carx6,cary6,50,30);
			if (carx6<-300){
				carx6 = random(520,560);
			}
			carx6 -= carspeed6;
		}
		public void carrow7(){
			fill(214,42,153);
			rect(carx7,cary7,50,30);
			if (carx7 > width+400){
				carx7 = random(-20,-60);
			}
			carx7 += carspeed7;
		}
		public void carrow8(){
			fill(255,150,24);
			rect(carx8,cary8,50,30);
			if (carx8<-300){
				carx8 = random(520,560);
			}
			carx8 -= carspeed8;
		}
		public void carrow9(){
			fill(214,42,153);
			rect(carx9,cary9,50,30);
			if (carx9 > width+350){
				carx9 =random(-20,-60);
			}
			carx9 += carspeed9;
		}
		public void carrow10(){
			fill(255,150,24);
			rect(carx10,cary10,50,30);
			if (carx10<-300){
				carx10 = random(520,560);
			}
			carx10 -= carspeed10;
		}
		public void carrow11(){
			fill(214,42,153);
			rect(carx11,cary1,50,30);
			if (carx11>width){
				carx11 = random(-360,-400);
			}
			carx11 += carspeed1;
		}
		public void carrow12(){
			fill(255,150,24);
			rect(carx12,cary2,50,30);
			if (carx12<0){
				carx12 = random(860,720);
			}
			carx12 -= carspeed2;
		}
		public void carrow13(){
			fill(214,42,153);
			rect(carx13,cary3,50,30);
			if (carx13<width){
				carx13 = random(-360,-400);
			}
			carx13 += carspeed3;
		}
		public void carrow14(){
			fill(255,150,24);
			rect(carx14,cary4,50,30);
			if (carx14<0){
				carx14 = random(860,720);
			}
			carx14 -= carspeed4;
		}
		public void carrow15(){
			fill(214,42,153);
			rect(carx15,cary5,50,30);
			if (carx15>width){
				carx15 = random(-360,-400);
			}
			carx15 += carspeed5;
		}
		public void carrow16(){
			fill(255,150,24);
			rect(carx16,cary6,50,30);
			if (carx16<0){
				carx16 = random(860,720);
			}
			carx16 -= carspeed6;
		}
		
		public void carrow17(){
			fill(214,42,153);
			rect(carx17,cary7,50,30);
			if (carx17>width){
				carx17 =random(-360,-400);
			}
			carx17 += carspeed7;
		}
		public void carrow18(){
			fill(255,150,24);
			rect(carx18,cary8,50,30);
			if (carx18<0){
				carx18 = random(860,720);
			}
			carx18 -= carspeed8;
		}
		public void carrow19(){
			fill(214,42,153);
			rect(carx19,cary9,50,30);
			if (carx19>width){
				carx19 = random(-360,-400);
			}
			carx19 += carspeed9;
		}
		public void carrow20(){
			fill(255,150,24);
			rect(carx20,cary10,50,30);
			if (carx20<0){
				carx20 = random(860,720);
			}
			carx20 -= carspeed10;
		}
	}
	
	class frog{

		public frog(){
			frogx = 250;
			frogy = 470;
			frogspeed = 40;
		}
		public void display(){
			rectMode(CENTER);
			fill(115,213,42);
			rect(frogx,frogy,15,18);
			rect(frogx-10,frogy-2,5,3);
			rect(frogx+10,frogy-2,5,3);
			rect(frogx-14,frogy-4,3,9);
			rect(frogx+14,frogy-4,3,9);
			rect(frogx-10,frogy+6,5,3);
			rect(frogx+10,frogy+6,5,3);
			rect(frogx-14,frogy+10,3,9);
			rect(frogx+14,frogy+10,3,9);
			fill(213,42,135);
			rect(frogx-5,frogy-8,4,4);
			rect(frogx+5,frogy-8,4,4);
		}
		public void move() {
			if (key == CODED) {
				if (keyCode == UP) {
					frogy -= frogspeed;		
				    } 
				if (keyCode == DOWN) {
				    frogy += frogspeed;
				    } 
				if (keyCode == LEFT) {
				     frogx-= frogspeed;
				  }
				if (keyCode == RIGHT){
					frogx += frogspeed;
					
				}
			}
			if(frogy>height){
				frogy = 470;
			}
			if(frogy<0){
				frogy=30;
			}
			if(frogx+11>width){
				frogx = 450;
			}
			if(frogx-11<0){
				frogx = 50;
			}
			//println("frogy"+frogy);
			
		}
		
	}
	
	class collide {
		public void collision(){
			if(frogx>=carx1-40 && frogx<=carx1+40 && frogy==cary1){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx2-40 && frogx<=carx2+40 && frogy==cary2){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx3-40 && frogx<=carx3+40 && frogy==cary3){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx4-40 && frogx<=carx4+40 && frogy==cary4){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx5-40 && frogx<=carx5+40 && frogy==cary5){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx6-40 && frogx<=carx6+40 && frogy==cary6){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx7-40 && frogx<=carx7+40 && frogy==cary7){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx8-40 && frogx<=carx8+40 && frogy==cary8){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx9-40 && frogx<=carx9+40 && frogy==cary9){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx10-40 && frogx<=carx10+40 && frogy==cary10){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx11-40 && frogx<=carx11+40 && frogy==cary1){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx12-40 && frogx<=carx12+40 && frogy==cary2){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx13-40 && frogx<=carx13+40 && frogy==cary3){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx14-40 && frogx<=carx14+40 && frogy==cary4){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx15-40 && frogx<=carx15+40 && frogy==cary5){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx16-40 && frogx<=carx16+40 && frogy==cary6){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx17-40 && frogx<=carx17+40 && frogy==cary7){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx18-40 && frogx<=carx18+40 && frogy==cary8){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx19-40 && frogx<=carx19+40 && frogy==cary9){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
			if(frogx>=carx20-40 && frogx<=carx20+40 && frogy==cary10){
				frogy = 470;
				frogx = 250;
				lives -= 1;
			}
		}
	}
	
	class win{
		float red;
		float green;
		float blue;
		
		public win(){
			red=random(20,255);
			green=random(20,255);
			blue=random(20,255);
			
		}
		public void winscreen(){
			fill(red,green,blue);
			rect(250,250,500,500);
			fill(255);
			rect(250,250,450,450);
			red=random(20,255);
			green=random(20,255);
			blue=random(20,255);
			fill(red,green,blue);
			textSize(70);
			text("You Win!",100,200);
			fill(24,237,255);
			rect(250,350,300,100);
			textSize(50);
			fill(0);
			text("Play Again",135,365);
			if (mousePressed == true && myX >= 150 && myX<=350 && myY >=300 && myY <= 400){
				frogspeed=40;
				frogy=470;
				frogx=250;
				lives=3;
				strokeWeight(1);
			}
		}
	}
	
	class loose{		
		public void loosescreen(){
			fill(255);
			rect(250,250,600,600);
			fill(0);
			textSize(70);
			text("You Loose",80,200);
			strokeWeight(4);
			fill(24,237,255);
			rect(250,350,200,100);
			textSize(50);
			fill(0);
			text("Retry",185,365);
			if (mousePressed == true && myX >= 150 && myX<=350 && myY >=300 && myY <= 400){
				frogspeed=40;
				frogy=470;
				frogx=250;
				lives=3;
				strokeWeight(1);
			}
			
		}
	}
	
	
	beginning field;
	finish lake;
	frog froggy;
	cars car1;
	cars car2;
	cars car3;
	cars car4;
	cars car5;
	cars car6;
	cars car7;
	cars car8;
	cars car9;
	cars car10;
	cars car11;
	cars car12;
	cars car13;
	cars car14;
	cars car15;
	cars car16;
	cars car17;
	cars car18;
	cars car19;
	cars car20;
	win awesomewin;
	loose sadloose;
	collide hitcar;
	
	public void settings(){
		size(500,500);
		field = new beginning();
		lake = new finish();
		froggy = new frog();
		car1 = new cars();
		car2 = new cars();
		car3 = new cars();
		car4 = new cars();
		car5 = new cars();
		car6 = new cars();
		car7 = new cars();
		car8 = new cars();
		car9 = new cars();
		car10 = new cars();
		car11 = new cars();
		car12 = new cars();
		car13 = new cars();
		car14 = new cars();
		car15 = new cars();
		car16 = new cars();
		car17 = new cars();
		car18 = new cars();
		car19 = new cars();
		car20 = new cars();
		awesomewin = new win();
		sadloose = new loose();
		hitcar = new collide();
	}
	
	public void setup(){
		background(0);
	}
	
	public void draw(){
		myX = mouseX;
		myY = mouseY;
		background(0);
		field.display();
		lake.display();
		froggy.display();
		car1.carrow1();
		car2.carrow2();
		car3.carrow3();
		car4.carrow4();
		car5.carrow5();
		car6.carrow6();
		car7.carrow7();
		car8.carrow8();
		car9.carrow9();
		car10.carrow10();
		car11.carrow11();
		car12.carrow12();
		car13.carrow13();
		car14.carrow14();
		car15.carrow15();
		car16.carrow16();
		car17.carrow17();
		car18.carrow18();
		car19.carrow19();
		car20.carrow20();
		hitcar.collision();
		fill(0);
		textSize(20);
		text("Lives:"+lives,10,485);
		if (frogy == 30){
			frogspeed = 0;
			awesomewin.winscreen();
		}
		if (lives == 0){
			frogspeed = 0;
			sadloose.loosescreen();
		}
	//	println("frogy "+frogy);
	}
	
	public void keyPressed() {
		froggy.move();
	}

}
