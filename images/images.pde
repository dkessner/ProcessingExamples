//
// images.pde
//
//


PImage scream;
int x = 200;
int y = 200;

void setup()
{
   size(400, 400); 
   scream = loadImage("scream.png");
}

void draw()
{
   background(0);
   
   imageMode(CENTER);
   image(scream, x, y);
}

void keyPressed()
{
  if (keyCode == RIGHT)
    x += 25;
  else if (keyCode == LEFT)
    x -= 25;
  else if (keyCode == UP)
    y -= 25;
  else if (keyCode == DOWN)
    y += 25;
}

