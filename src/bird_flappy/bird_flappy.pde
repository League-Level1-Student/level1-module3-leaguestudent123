int x = 100;
int y = 100;
int birdYVelocity=0;
int gravity= 1;
int pipe=200;
int upperpipeheight = (int) random(100, 400);
int pipegap=200;
boolean game=true;
int score;
void setup(){
  size(500,500);
  
  
  
  
  
  
}
void draw(){
  
  if(game==true){
 
  background(0,187,252);
  
   if(intersectsPipes()){
   game=false;
   
     
     
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
 rect(0,450,550,350);
 

 
if(y>450){
  game=false;
  
}


 if(pipe<-20){
    upperpipeheight = (int) random(100, 400);
   pipe=width;
 }
 fill(#FA00D1);
 text("score: " +score, 0,100);
  }
else{
  
  background(0);
  text("game over", 240, 250);
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
    birdYVelocity= - 15;
    
  }
  if(key=='r'){
    game=true;
    y=100;
    pipe=200;
  }
  
}
