//
// states.pde
//

int lightState = 1;

void setup()
{
  size(400, 400); 
}

void draw()
{
  background(0);
  
  rectMode(CENTER);
  fill(128);
  rect(200, 200, 100, 300);
  
  if (lightState == 1)
    fill(255, 0, 0);
  else
    fill(128);
  
  ellipse(200, 100, 50, 50);
 
  if (lightState == 2)
    fill(255, 255, 0);
  else
    fill(128);
 
  ellipse(200, 200, 50, 50);
  
  if (lightState == 3)
    fill(0, 255, 0);
  else
    fill(128);
  
  ellipse(200, 300, 50, 50);
}

void mousePressed()
{
    lightState++;

    if (lightState == 4)
      lightState = 1;
}

