//declar variables
int timer, interval;

//boolean is a variable that can be true or false
boolean display;

void setup(){
  size(500,500);
  textSize(30);
  textAlign(CENTER);
  
  //millis() returns the amount of time the program has been running in milliseconds
  timer = millis();
  interval = 1000;
  display = true;
}

void draw(){
  background(0);
  fill(255);
  
  //if the interval has passed, reset the timer and change display
  if(millis() > timer+interval){
    timer = millis();
    //the exclamation point means "not"
    display = !display;
  }
  
  if(display){
    text("ON", width/2,height/2);
  }else{
    text("OFF", width/2,height/2);
  }

}
