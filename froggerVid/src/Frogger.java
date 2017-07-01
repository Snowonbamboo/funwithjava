import java.awt.Color;

import processing.core.PApplet;
public class Frogger extends PApplet {
	
	public static void main(String[] args) {
		PApplet.main("Frogger");
	}
	
	public void settings(){
		size(1000,910);
	}
	Frog f;
	class Frog{
		float x;
		float y;
		Color c;
		float l;
		float speed;
		
		public Frog(Color nc, float nspeed){
			c = nc;
			l = 40;
			speed = nspeed;
			x=500;
			y=800;
			
				
		}
		
		public void display(){
			stroke(0);
			fill(c.getRed(),c.getGreen(),c.getBlue());
			ellipse(x+15,y+10,20,l*3/4);
			ellipse(x-15,y+10,20,l*3/4);
			ellipse(x-10,y-15,10,l/2);
			ellipse(x+10,y-15,10,l/2);
			ellipse(x,y,30,l);
			fill(0);
			ellipse(x-5,y-9,2,2);
			ellipse(x+5,y-9,2,2);
			line(x-2,y-l+25,x+2,y-l+25);
			
		}//end of display function
		
		public void move(){
			if(keyPressed){
				if(key == 'w'){
					y = y-speed;
					if(y>height){
						y=0;
					}
				}
				if(key == 'a'){
					x = x-speed;
					if(x>width){
						x=0;
					}
				}
				if(key == 's'){
					y = y+speed;
					if(y>height){
						y=0;
					}
				}
				if(key == 'd'){
					x = x+speed;
					if(x>width){
						x=0;
					}
				}
				
			}
			
		}//end of move function
		
	}//end of Frog class
	
	
	Car c;
	Car c2;
	Car c3;
	Car c4;
	Car c5;
	Car c6;
	Car c7;
	Car c8;
	Car c1b;
	Car c2b;
	Car c3b;
	Car c4b;
	Car c5b;
	Car c6b;
	Car c7b;
	Car c8b;
	class Car{
		float x;
		float y;
		float speed;
		Color c;
		float l;
		
		public Car(float nx, float ny, Color nc,float nspeed){
			x = nx;
			y = ny;
			l = random(50,120);
			speed = nspeed;
			c = nc;
		}
			
			public void display(){
				fill(c.getRed(),c.getGreen(),c.getBlue());
				rect(x,y,l,40);
				fill(50);
				rect(x+l*2/10,y-5,15,5);
				rect(x+l*2/10,y+40,15,5);
				rect(x+l*6/10,y-5,15,5);
				rect(x+l*6/10,y+40,15,5);
			}//end of display function
			
			public void move1(){
				x = x-speed;
				if(x<0){
					x=1000;
				}
				
			}//end of move1 function
			
			public void move2(){
				x = x+speed;
				if(x>1000){
					x=0;
				}
				
			}//end of move2 function
				
				
				
	}//end of Car class
	Train t;
	class Train{
		float x;
		float y;
		float speed;
		Color c;
		float l;
		
		public Train(float nx, float ny, Color nc,float nspeed){
			x = nx;
			y = ny;
			c = nc;
			speed = nspeed;
			
		}
		
		public void display(){
			fill(c.getRed(),c.getGreen(),c.getBlue());
			rect(x,y,200,70);
			fill(0);
			triangle(x,y+70,x-25,y+35,x,y);
			fill(50);
			rect(x+20,y-7,30,7);
			rect(x+20,y+70,30,7);
			rect(x+85,y+70,30,7);
			rect(x+85,y-7,30,7);
			rect(x+150,y+70,30,7);
			rect(x+150,y-7,30,7);
			fill(120);
			rect(x+200,y+20,15,30);
			fill(c.getRed(),c.getGreen(),c.getBlue());
			rect(x+215,y,200,70);
			fill(50);
			rect(x+235,y-7,30,7);
			rect(x+235,y+70,30,7);
			rect(x+300,y+70,30,7);
			rect(x+300,y-7,30,7);
			rect(x+365,y+70,30,7);
			rect(x+365,y-7,30,7);
			
		}//end of display function
		
		public void move(){
			x = x-speed;
			if(x<0){
				x=1000;
			}
			
		}//end of move function
		
		
	}//end of train class
	
	
	public void map1(){
		background(80,180,80);
		stroke(40,120,40);
		fill(40,120,40);
		ellipse(250,850,25,25);
		ellipse(260,860,25,25);
		ellipse(250,860,25,25);
		
		ellipse(100,870,25,25);
		ellipse(110,880,25,25);
		ellipse(100,880,25,25);
		
		ellipse(590,890,25,25);
		ellipse(600,900,25,25);
		ellipse(590,900,25,25);
		
		ellipse(890,850,25,25);
		ellipse(900,860,25,25);
		ellipse(890,860,25,25);
		
		ellipse(690,800,25,25);
		ellipse(700,810,25,25);
		ellipse(690,810,25,25);
		
		ellipse(100,530,25,25);
		ellipse(110,540,25,25);
		ellipse(100,540,25,25);
		
		stroke(0);
		fill(150);
		rect(-1,650,width+1,70);
		rect(-1,570,width+1,70);
		rect(-1,500,width+1,10);
		rect(-1,420,width+1,10);
		rect(-1,270,width+1,70);
		rect(-1,119,width+1,70);
		
		for(int i = 0;i < 1000; i += 20){
			fill(112,75,0);
			rect(0+i,430,5,70);
		}
		
		
		
	}//end of map1 function	
		
	public void setup(){
		f = new Frog(Color.GREEN,5);
		c = new Car(999,667,Color.RED,7);
		c2 = new Car(799,667,Color.YELLOW,12);
		c3 = new Car(599,667,Color.CYAN,10);
		c4 = new Car(399,667,Color.RED,10);
		c5 = new Car(199,667,Color.BLUE,11);
		c6 = new Car(999,587,Color.GREEN,12);
		c7 = new Car(799,587,Color.CYAN,9);
		c8 = new Car(599,587,Color.GREEN,8);
		t = new Train(500,430,Color.RED,15);
		c1b = new Car(999,285,Color.YELLOW,7);
		c2b = new Car(799,285,Color.RED,12);
		c3b = new Car(599,285,Color.BLUE,10);
		c4b = new Car(399,285,Color.GREEN,10);
		c5b = new Car(199,135,Color.RED,11);
		c6b = new Car(999,135,Color.YELLOW,12);
		c7b = new Car(799,135,Color.CYAN,9);
		c8b = new Car(599,135,Color.GREEN,8);
	}
	
	public void draw(){
		map1();
		f.display();
		f.move();
		c.display();
		c.move1();
		c2.display();
		c2.move1();
		c3.display();
		c3.move1();
		c4.display();
		c4.move1();
		c5.display();
		c5.move1();
		c6.display();
		c6.move1();
		c7.display();
		c7.move1();
		c8.display();
		c8.move1();
		t.display();
		t.move();
		c1b.display();
		c1b.move2();
		c2b.display();
		c2b.move2();
		c3b.display();
		c3b.move2();
		c4b.display();
		c4b.move2();
		c5b.display();
		c5b.move2();
		c6b.display();
		c6b.move2();
		c7b.display();
		c7b.move2();
		c8b.display();
		c8b.move2();
	}
	
}//end of entire program
