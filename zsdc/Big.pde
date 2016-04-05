class Big{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Big(float xLoc, float yLoc){
    location = new PVector(xLoc,yLoc);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = random(1,6);
  }

  void applyForce(PVector force){
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  void display(){
    //mouse
  //body
  stroke(0);
  strokeWeight(0.8);
  fill(255);
  ellipse(400,250,60,100);
  //tail
  curve(300,250,400,200,380,100,100,100);
  //eyes
  fill(0);
  ellipse(390,275,8,8);
  ellipse(410,275,8,8); 
      //nose
      fill(242,199,224);
      noStroke();
  ellipse(400,300,15,15);
}
  }

  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void checkEdges(){
    if(location.x > width){
      velocity.x *= -1;
    } else if(location.x < 0){
      velocity.x *= -1;
    }

    if(location.y > height){
      velocity.y *= -1;
    } else if(location.y < 0){
      velocity.y *= -1;
    }
  }
   void applyForce(PVector force){
    acceleration.add(force);
  }