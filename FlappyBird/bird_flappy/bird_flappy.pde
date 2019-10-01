int x = 100;
int y = 100;
int birdYVelocity=0;
int gravity= 1;
int pipe=200;
void setup(){
  size(500,500);
  
  
  
  
  
  
}
void draw(){
  
  background(0,187,252);
  fill(250,255,0);
  stroke(250,255,0);
  
  
  
  birdYVelocity+=gravity;
  y+=birdYVelocity;
  ellipse(x,y,20,20);
  
  
  fill(#03FF00);
rect(pipe, 0, 20, 250);
 pipe-=1;
}

void keyPressed(){
  
  if(key == ' '){
    birdYVelocity= -20;
    
  }
  
  
}
