//
// classes_2
//


Ball ball;
Ball ball2;


void setup()
{
  size(400, 400);

  // create new Ball objects with a constructor function
  ball = new Ball(200, 200, 1, 2);
  ball2 = new Ball(200, 200, 2, 1);
}


void draw()
{
  background(0);
  
  ball.display();
  ball2.display();
}


class Ball
{
  int x;
  int y;
  int vx;
  int vy;
  
  // constructor function
  
  Ball(int xIn, int yIn, int vxIn, int vyIn)
  {
     // save values in our member variables
     x = xIn;
     y = yIn;
     vx = vxIn;
     vy = vyIn;
  }
  
  void display()
  {
    ellipse(x, y, 50, 50);
    
    x += vx;
    y += vy;
    
    if (x<0 || x>width)
      vx = -vx;
      
    if (y<0 || y>height)
      vy = -vy;
        
  }
}