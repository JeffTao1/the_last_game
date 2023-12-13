class Player {
  PVector X;
  PVector speed;
  boolean goLeft;
  boolean goRight;
  int switchspeed;


  Player() {
    X = new PVector(200, 245); 
    speed = new PVector(5,0); 
  }

  void body() {
    switch(switchspeed){
      
      case 0:
      speed.x = 3;
    rect(X.x, 245, 40, 80); // Draw the player

    if (goRight) {
      X.add( speed); // Move right
    }
    if (goLeft) {
      X.sub(speed); // Move left
    }
  break;
  
  default:
  speed.x = 1;
      rect(X.x, 245, 40, 80); // Draw the player

    if (goRight) {
      X.add( speed); // Move right
    }
    if (goLeft) {
      X.sub(speed); // Move left
    }
      break;
  }
  }


  void keyPressed() {
    if (keyCode == LEFT) {
      goLeft = true;
    }
    if (keyCode == RIGHT) {
      goRight = true;
    }
     if (key == 'q') {
        X.x = (X.x + 1) % 2;
    }
    
  }

 
  void keyReleased() {
    if (keyCode == LEFT) {
      goLeft = false;
    }
    if (keyCode == RIGHT) {
      goRight = false;
    }
  }
}
