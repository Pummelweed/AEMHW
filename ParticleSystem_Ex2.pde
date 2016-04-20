ParticleSystem ps = new ParticleSystem(250,500);
PVector gravityN = new PVector(0,-0.1);
PVector sideS = new PVector(random(0-0.5),0);

void setup(){
  size(500,500);
}

void draw(){
  background(227,77,77);
  ps.addParticle();
  ps.run();
}

void mouseClicked(){
}