class Fast{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Fast(float xLoc, float yLoc){
    location = new PVector(xLoc,yLoc);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = random(1,6);
  }

  void applyForce(PVector force){
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  void display2(){
  //sector1
  fill(81,168,94);
  ellipse(730,775,760,700);
  //sector2, from 500-1000 y
  fill(0);
  line(0,450,589,450);
  //sector3 is 0-495 x and 500-1000 y
    //fly
    fill(0);
    ellipse(180,650,5,5);
  }

  void update2(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void checkEdges2(){
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