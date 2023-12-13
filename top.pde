class Intop {
  int cloudmove;
  void building() {
    
    fill(84,132,226);
    rect(0, 75, width, 250); // blue Background
   

    IG = loadImage("Image/walltop.png");
    imageMode(CENTER);
    image(IG, 253, 295);
        
    fill(0,0,0);
    rect(0, 0, width, 75);  // black bg
    fill(0,0,0);
    rect(0, 325, width, 75);  // black bg
    
    
  }

  void cloud() {
    for(int i = 0; i<1; i++){
    IG = loadImage("Image/cloud1.png");
    imageMode(CENTER);
    image(IG, cloudmove, 120);
    cloudmove = (cloudmove + 1);
    if(cloudmove >= 600){
      cloudmove = -200;
    }

  }
  
  }
  
  void bird(){
  IG = loadImage("Image/birds1.png");
    imageMode(CENTER);
    image(IG, mouseX, mouseY);
    
  
  }
}
