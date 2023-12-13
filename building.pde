
class barbuilding {
  void building() {
    
    fill(84,132,226);
    rect(0, 75, width, 250); // blue Background
    IG = loadImage("Image/backe1.png");
    image(IG, 250, 200,600,450);
    IG = loadImage("Image/hDoor.png");

    imageMode(CENTER);
    image(IG, 250, 201);
    
    fill(0,0,0);
    rect(0, 0, width, 75);  // black bg
    fill(0,0,0);
    rect(0, 325, width, 75);  // black bg
  }
    
}
