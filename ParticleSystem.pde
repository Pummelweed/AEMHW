class ParticleSystem {
  ArrayList<Particle> plist;
  PVector center;
  
  ParticleSystem(float locX, float locY){
    plist = new ArrayList<Particle>();
    center = new PVector(locX,locY);
  }
  void addParticle(){
    plist.add(new Particle(center.x,center.y));
  }
  
  void run(){
    for(int index = 0; index < plist.size(); index++){
    Particle p = plist.get(index);
    p.run();
    p.applyForce(gravityN);
    p.applyForce(sideS);
    if(p.isDead()){
      plist.remove(index);
      println("RIP");
    }
    }
  }
}