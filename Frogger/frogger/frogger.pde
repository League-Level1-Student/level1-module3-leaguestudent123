int frogx=100;
int frogy=100;

class Car {
  int carX;
  int carY;
  int carSize;
  int carSpeed;

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
}
void setup() {
  Car honda = new Car(23, 43, 5, 3);
  println(honda.carX);
  println(honda.carY);
  println(honda.carSize);
  println(honda.carSpeed);



  size(500, 500);
}
void draw() {

  background(#0046FF);

  fill(#00FF1B);
  ellipse(frogx, frogy, 20, 20);


  fill(#A09696);
  rect(300, 300, 100, 40);
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
}
