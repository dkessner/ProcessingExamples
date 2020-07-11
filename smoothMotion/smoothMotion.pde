//declare variables
float x,y,xVel,yVel;

void setup(){
  size(400,400);
  //initialize variables
  x = width/2;
  y = height/2;
  xVel = 0;
  yVel = 0;
}

void draw(){
  background(0);
  
  //increment x and y positions by x and y velocities
  x = x + xVel;
  y += yVel;
  
  //draw character
  ellipse(x,y,50,50);

}

//if a key is pressed, set corresponding x and y velocities
void keyPressed(){
  if(keyCode == LEFT){
    xVel = -2;
  }else if(keyCode == RIGHT){
    xVel = 2;
  }else if(keyCode == UP){
    yVel = -2;
  }else if(keyCode == DOWN){
    yVel = 2;
  }
}

//if a key is released, set corresponding velocity to 0
void keyReleased(){
  if(keyCode == LEFT || keyCode == RIGHT){
    xVel = 0;
  }else if(keyCode == UP || keyCode == DOWN){
    yVel = 0;
  }
}