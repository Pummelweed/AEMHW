class Flying{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Flying(float xLoc, float yLoc){
    location = new PVector(xLoc,yLoc);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = random(1,6);
  }

  void applyForce(PVector force){
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  void display3(){
   line(400,190,390,170);
   line(400,190,410,170);
   noStroke();
   fill(100);
   ellipse(400,200,20,20);
   fill(150);
   ellipse(382,200,17,40);
   ellipse(418,200,17,40);
  }

  void update3(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void checkEdges3(){
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
}