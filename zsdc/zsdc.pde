Big mouse;
Fast fly;
Flying moth;
PVector repulsion;

void setup(){
  size(1000,1000);
  mouse = new Big(100,100);
  fly = new Fast(30,30);
  moth = new Flying(55,55);
  repulsion = new PVector(1,1);
}

void draw(){
  background(198,233,247);
  //sector1
  ellipse(730,775,760,700);
  //sector2, from 500-1000 y
  line(0,500,495,500);
  //sector3 is 0-495 x and 500-1000 y
  
  
  mouse.display();
  mouse.update();
  mouse.checkEdges();
  fly.display2();
  fly.update2();
  fly.checkEdges2();
  moth.display3();
  moth.update3();
  moth.update3();
  
}