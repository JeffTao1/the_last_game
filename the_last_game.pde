

ArrayList<onecl> move;
PImage IG; // Image
int Starting = 0; // Page number
int Outing = 3;
int Ending = 2;
int Baring = 1;
int Topping = 4;
int talking = 5;
int page = Starting;

float SpeedTransition = 2; // How fast the transition black page moves
boolean CheckTransition = false; // Check if the transition is over
int checkpoint; // The point that checks if the black page touches
PVector pxy;
PVector v;
barbuilding bb = new barbuilding();
Intop IP = new Intop();
Inbar IB = new Inbar();


Player ool;

void setup() {
  size(500, 400);
  ool = new Player();
  println("hi");
  move = new ArrayList<onecl>();
   pxy = new PVector(200, 200);
  v = new PVector(-1, 0);
  
  
}

void draw() {
  background(255);

  if (page == Starting) {
    transition();
    playing();
  } 
  if (page == Outing) {
    bb.building();

    fill(0);
    ool.body();
  
    if (ool.X.x < -40 || ool.X.x > width) {
      page = Ending;
    }
  } 



  if (page == Baring) {
    fill(200, 20, 21);
    IB.building();
    ool.body();
     if(ool.X.x >450){
    IG = loadImage("Image/godown.png");
    imageMode(CENTER);
    image(IG, 475, 110);   

  }
  
    
    if(ool.X.x <50){
    IG = loadImage("Image/goup.png");
    imageMode(CENTER);
    image(IG, 25, 110);
  }
  }

  if (page == Topping) {
    fill(100);
    IP.building();
    IP.cloud();
    IP.bird();
    ool.body();
     if(ool.X.x >450){
    IG = loadImage("Image/godown.png");
    imageMode(CENTER);
    image(IG, 475, 110);
    
    
    for (int i = 0; i < 200; i++) {
    onecl yep = new onecl();
    yep.cl2();
    move.remove(yep);
  }
  }
  }

  if (page == Ending) {
    Endining();
  }
  
  

   

}

void transition() {
  fill(0);
  rect(0, checkpoint, width, height);

  if (checkpoint >= height) {
    CheckTransition = false;
  }
}

void keyPressed() {
  if (page == Starting && key == 'e' || key == 'E') {
    page = Baring;
    ool.X.x = 450;

  } 
  
  else if (page == Ending && key == 'e' || key == 'E') {
    page = Starting;

  } 
  
  else if (page == Baring && ool.X.x >= 380 && key == 'e' || key == 'E') {
    page = Outing;
    ool.X.x = 225;

    

  } 
 
  else if (page == Baring && ool.X.x <= 60 && key == 'e' || key == 'E') {
    page = Topping;
    ool.X.x = 450;
  } 
 
  else if (page == Topping && ool.X.x >= 380 && key == 'e' || key == 'E') {
    page = Baring;
    ool.X.x = 50;
  }
  
   else if (page == Outing && ool.X.x >= 180 && ool.X.x <= 280 && key == 'e' || key == 'E') {

    page = Baring;
    ool.X.x = 450;

  }

  if (page == Starting && key == 'e' || key == 'E') {
    CheckTransition = true;
    checkpoint += SpeedTransition;
  }

  if (page == Outing || page == Baring || page == Topping) {
    ool.keyPressed();
  }
}

void keyReleased() {
  if (page == Outing || page == Baring || page == Topping) {
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
  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Game Over", width / 2, height / 2);
  for (int i = 0; i < 290; i = i + 10) {
  for (int z = 0; z < 10; z++) {
    rect(140 + z * 50, i + 220, 10, 10); 
  }
}
}

class Inbar {
  void building() {

    fill(225, 225, 98);
    rect(0, 75, width, 250); // Background

    fill(10, 20, 10);
    rect(0, 200, 50, 80); // Lift door
   
    imageMode(CENTER);
    
    IG = loadImage("Image/mr1.png");
    image(IG, 410, 243);
    
     IG = loadImage("Image/Chair.png");
    image(IG, 410, 308);
    
    IG = loadImage("Image/EXIT.png");
    image(IG, 40, 180);
    
    IG = loadImage("Image/table.png");
    image(IG,210 , 284);
    
    fill(0,0,0);
    rect(0, 0, width, 75);  // black bg
    fill(0,0,0);
    rect(0, 325, width, 75);  // black bg
    
    
     pxy.add(v);
  
  if(pxy.y > 300) {
    pxy.y = 300;
    v.y = -v.y;
  }
  
  if(pxy.x < 100) {
    v.add(0.1,0);
  }
  if(pxy.x > 300) {
    // v.add(-0.1,0);
    v.x = -0.95;
  }
  fill(0,0,0);
  circle(pxy.x, pxy.y, 40);
  
  }
}


class onecl{
  int speed = 1;
  void cl2(){
    imageMode(CENTER);
    
    IG = loadImage("Image/cl2.png");
   image(IG, -400*speed, 308);
    IG = loadImage("Image/cl3.png");
   image(IG, -200*speed, 258);
    IG = loadImage("Image/cl4.png");
   image(IG, -201*speed, 348);
    IG = loadImage("Image/cl5.png");
    image(IG, -20*speed, 208);
  }
}
