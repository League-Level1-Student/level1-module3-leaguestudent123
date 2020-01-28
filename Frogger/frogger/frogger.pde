int frogx=100;
int frogy=100;
boolean game=true;
 PImage back;
 PImage carLeft;
 PImage carRight;
 PImage frog;
class Car {
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  int getX;
  int getY;
  int getSize;

  Car(int x, int y, int size, int speed) {
    this.carX = x;
    this.carY = y;
    this.carSize=size;
    this.carSpeed=speed;
  }
  void display()
  {
    fill(0, 255, 0);
    rect(carX, carY, carSize, 50);
    
  }
  void moveleft(){
   carX-=carSpeed; 
    if(carX<-carSize){
      
    carX=width;
    }
  } 
  
   
   
  void moveright(){
   carX+=carSpeed; 
    if(carX>width){
      
    carX=-carSize;
    }
  } 
}
    Car honda = new Car(300, 300, 200, 3);
    Car newcar= new Car(100,100,200,3);
    Car carz= new Car(200,200,200,3);
    Car lambo=new Car (400,400,200,3);
void setup() {


 



size(844,600);
        back = loadImage("froggerBackground.png");
        carLeft = loadImage("carLeft.png");
        carLeft.resize(160,100);
        carRight = loadImage("carRight.png");
        carRight.resize(160,100);
        frog = loadImage("frog.png");
        frog.resize(75,75);
  
}
void draw() {

  background(back);
        image (carLeft,250,360);
        image (carRight,250, 210);
        image (frog, 300, 530);

  fill(#00FF1B);
  ellipse(frogx, frogy, 20, 20);

 
  
  if(frogy>570){

    
    background(0);
     text("you WIN", 230,250);
    game=false;
  }
 
 if(game==true){
  honda.display();
  honda.moveleft();
  

newcar.display();
newcar.moveright();

carz.display();
carz.moveleft();

lambo.display();
lambo.moveright();

 }
if(intersects(honda) || intersects(newcar) || intersects(carz) || intersects(lambo)) {
  frogx=100;
frogy=100;
}

}

void keyPressed() {
  if (key == 'w') {
    //Frog Y position goes up
    frogy=frogy-20; 
    if (frogy<=0) {

      frogy=0;
    }
  } else if (key == 's')
  {
    //Frog Y position goes down
    frogy=frogy+20;
    if (frogy>=height) {

      frogy=height;
    }
  } else if (key == 'd')
  {
    //Frog X position goes right
    frogx=frogx+20;
    if (frogx>=width) {

      frogx=width;
    }
  } else if (key == 'a')
  {
    //Frog X position goes left
    frogx=frogx-20;
    if (frogx<=0) {

      frogx=0;
    }
  }
  else if(key == 'r'){
    
    game=true;
    frogy=100;
    
    
  }
}
boolean intersects(Car car) {
 if ((frogy > car.carY && frogy < car.carY+50) &&
                (frogx > car.carX && frogx < car.carX+car.carSize)) {
   return true;
  }
 else  {
  return false;
 }
}
