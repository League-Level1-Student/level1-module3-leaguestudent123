int x = 100;
int y = 100;
int birdYVelocity=0;
int gravity= 1;
int pipe=200;
int upperpipeheight = (int) random(100, 400);
int pipegap=200;
void setup(){
  size(500,500);
  
  
  
  
  
  
}
void draw(){
  
  background(0,187,252);
   if(intersectsPipes()){
   
   
   
 }
  fill(250,255,0);
  stroke(250,255,0);
  

  
    birdYVelocity+=gravity;
  y+=birdYVelocity;
  ellipse(x,y,20,20);
  
  
  fill(#03FF00);
rect(pipe, 0, 20, upperpipeheight);
rect(pipe, upperpipeheight+pipegap, 20, 200);
 pipe-=1;
 
 

 if(pipe<-20){
    upperpipeheight = (int) random(100, 400);
   pipe=width;
 }

}

 boolean intersectsPipes() { 
         if (y < upperpipeheight && x > pipe && x < (pipe+20)){
            return true; }
        else if (y>upperpipeheight+pipegap && x > pipe && x < (pipe+20)) {
            return true; }
        else { return false; }

 }
 
 


void keyPressed(){
  
  if(key == ' '){
    birdYVelocity= -20;
    
  }
  
}
