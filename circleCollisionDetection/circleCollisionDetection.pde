//declare mouse object radius
float r;

//declare collider object variables
float bX, bY, bR;

void setup() {
  size(500, 500);
  textAlign(CENTER);
  //initialize variables
  r = 50;
  bX = width/2;
  bY = height/2;
  bR = 100;
}

void draw() {
  background(0);

  //draw mouse object
  ellipse(mouseX, mouseY, 2*r, 2*r);

  //draw collider object
  ellipse(bX, bY, 2*bR, 2*bR);

  //check if distance between the objects is less than the sum of their radii
  if (dist(mouseX, mouseY, bX, bY) < r + bR) {
    fill(255);
    text("My circles are touching!", width/2, height/2);
    fill(255, 0, 0);
  } else {
    fill(255);
  }
}