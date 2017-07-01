
size(600,600);
background(191,183,189);

for(int i=0; i <= 10000; i +=14){
  //fill(shift*10,shift*5,0);
  line(i, 0, 600, i);
  stroke(random(239),random(134),random(218));
  //stroke(random(i));
  line(600, i, i, 0);
  line(0,i, i, 600);
  line(i, 600, 0,i);
  line(600,i, 600-i, 600);
  line(600-i, 600, 600,i);
  line(600-i, 0, 0, i);
  line(0, i, 600-i, 0);
}