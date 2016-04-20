ArrayList<Particle> plist = new ArrayList<Particle>();
PVector gravityN = new PVector(0,-0.1);
PVector sideR = new PVector(random(0-0.5),0);
PVector sideL = new PVector(random(-0-0.5),0);

void setup(){
  size(500,500);
}

void draw(){
  background(227,77,77);
  for(int index = 0; index < plist.size(); index++){
    Particle p = plist.get(index);
    p.run();
    p.applyForce(gravityN);
    if(p.isDead()){
      plist.remove(index);
      println("RIP");
    }
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    p.applyForce(sideL);
  } else if (mouseButton == RIGHT) {
    p.applyForce(sideR);
  }
}