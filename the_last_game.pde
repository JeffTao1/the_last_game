
int Starting = 0;
int Outing = 3;
int Ending = 2;
int Baring = 1;
int Farming = 4;
int Topping = 5;


int page = Starting; 

player ool; 

void setup() {
  size(400, 400);
  ool = new player(); 
  println("hi");
}

void draw() {
  background(255);

  if (page == Starting) {

    playing();
  } 
  if (page == Outing) {

    barbuilding bb = new barbuilding();
    bb.building();
   
    fill(0);
    ool.body(); 

    if (ool.X < -200 || ool.X > width-100) {
      page = Ending;
    }
  } 
  
  if(page == Baring){
        fill(0);
    ool.body(); 
  }
  if(page == Farming){
     fill(0);
    ool.body(); 
  }
  
  if(page == Topping){
        fill(0);
    ool.body(); 
  }
  
  
  if (page == Ending) {

    Endining();
  }
}

void keyPressed() {
  if (page == Starting && key == 'e' || key == 'E') {
    page = Baring; 
  }
  else if (page == Ending && key=='e' || key== 'E') {
    page = Starting; 
  }
   else if(page == Baring && ool.X >= 380 && key == 'e' || key == 'E'){
    page = Outing;
  }
  
    else if(page == Baring && ool.X <= 60 && key == 'e' || key == 'E'){
    page = Farming;
  }
  
  
    else if(page == Farming && ool.X >= 380 && key == 'e' || key == 'E'){
    page = Baring;
  }
  
    else if(page == Farming && ool.X <= 60 && key == 'e' || key == 'E'){
    page = Topping;
  }
  
  
    else if(page == Topping && ool.X >= 380 && key == 'e' || key == 'E'){
    page = Farming;
  }
  

  
  
  
  if (page == Outing || page == Baring) {
    ool.keyPressed();
  }
}

void keyReleased() {
  if (page == Outing || page == Baring ) {
    ool.keyReleased(); 
  }
}

void playing() {

  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Start", width / 2, height / 2);
}

void Endining() {
  // Display end page content
  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Game Over", width / 2, height / 2);
}

class player {
  float X = 30;
  float Speed = 5;
  boolean goleft;
  boolean goright;
  boolean e;

  void body() {
    rect(X + 160, 320, 20, 20); 

    if (goright) {
      X += Speed;
    }
    if (goleft) {
      X -= Speed;
    }

  }

  void keyPressed() {
    if (keyCode == LEFT) {
      goleft = true;
    }
    if (keyCode == RIGHT) {
      goright = true;
    }
    if (key == 'e' || key == 'E') {
      e = true;
    }
  }

  void keyReleased() {
    if (keyCode == LEFT) {
      goleft = false;
    }
    if (keyCode == RIGHT) {
      goright = false;
    }
    if (key == 'e' || key == 'E') {
      e = false;
    }
  }
}

class barbuilding {
  void building() {
    fill(225, 225, 98);
    rectMode(CENTER);
    rect(200, 220, 170, 220); 

  }
}

class Inbar{
  void building(){
    fill(225,225,98);
    rect(0, 75 , 400, 250); 
  }
}
class Infarm{
  void building(){
    fill(225,225,225);
    rect(0, 75 , 400, 250); 
    fill(250,250,10);
    rect(30, 200,40,40);
  }
}

class Intop{
  void building(){
    fill(225,225,225);
    rect(0, 75 , 400, 250); 
    fill(250,250,10);
    rect(30, 200,40,70);
  }
}
