int frogx=100;
int frogy=100;
void setup() {

  size(500, 500);
}
void draw() {

  background(#0046FF);

  fill(#00FF1B);
  ellipse(frogx, frogy, 20, 20);
}
void keyPressed() {
  if (key == 'w') {
    //Frog Y position goes up
    frogy=frogy-20;
    if(frogy<=0){
      
      frogy=0;
    }
    
    
  } else if (key == 's')
  {
    //Frog Y position goes down
    frogy=frogy+20;
    if(frogy>=height){
      
      frogy=height;
    }
  } else if (key == 'd')
  {
    //Frog X position goes right
    frogx=frogx+20;
    if(frogx<=0){
      
      frogx=0;
    }
  } else if (key == 'a')
  {
    //Frog X position goes left
    frogx=frogx-20;
    if(frogx>=width){
      
      frogx=width;
    }
  }
}
