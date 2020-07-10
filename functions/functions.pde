//
// functions.pde
//

void setup()
{
  size(400, 400);  
}

void drawFace(int x, int y)
{
   fill(255);
   ellipse(x, y, 100, 100);
   fill(0);
   ellipse(x-25, y-10, 20, 20);
   ellipse(x+25, y-10, 20, 20);
   ellipse(x, y+25, 40, 20);
}

void draw()
{
  background(0);
  drawFace(100, 100);
  drawFace(200, 200);
  drawFace(300, 300);
  drawFace(mouseX, mouseY);
}
