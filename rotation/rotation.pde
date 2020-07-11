//
// rotation
//

void setup()
{
  size(400, 400); 
}

float angle = 0;
float vangle = 1;

void draw()
{
  background(0);
  
  pushMatrix();             // save current coordinate system
  translate(200, 200);      // translate coordinate system
  rotate(radians(angle));   // rotate coordinate system
  ellipse(0, 0, 100, 50);   // draw everything centered at origin
  popMatrix();              // restore coordinate system
  
  rect(50, 50, 100, 50);
  
  angle += vangle;
}