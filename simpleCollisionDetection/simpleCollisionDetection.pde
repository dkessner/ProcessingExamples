//declare variables for object and box
float x, y, w, xSpeed, ySpeed;
float bX, bY, bW;

//initialize variables
void setup() {
  size(500, 500);
  x = 50;
  y = 0;
  w = 10;
  xSpeed = 2;
  ySpeed = 2;
  bX = width/2-100;
  bY = height/2-100;
  bW = 200;
}

void draw() {
  background(0);
  noStroke();

  //increment x and y of moving object
  x+=xSpeed;
  y+=ySpeed;

  //draw object and box
  fill(255);
  rect(bX, bY, bW, bW);
  fill(255, 0, 0);
  rect(x, y, w, w);

  //reverse direction of object at boundaries of screen
  if (x > width-w || x < 0) {
    xSpeed = xSpeed * -1;
  }
  if (y > height-w || y < 0) {
    ySpeed *= -1;
  }

  //check to see if object is inside boundaries of box
  if (x > bX && x+w < bX+bW && y > bY && y < bY + bW) {
    textAlign(CENTER);
    text("Inside the Box!", width/2, height/2);
  }
}