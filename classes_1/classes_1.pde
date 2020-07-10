//
// classes_1
//


// declare Ball objects
Ball ball;
Ball ball2;


void setup()
{
  size(400, 400);

  // create the Ball object and set variables
  ball = new Ball();
  ball.x = 200;
  ball.y = 200;
  ball.vx = 1;
  ball.vy = 2;
  
  // create another Ball object and set variables
  ball2 = new Ball();
  ball2.x = 200;
  ball2.y = 200;
  ball2.vx = 2;
  ball2.vy = 1;
}


void draw()
{
  background(0);
  
  // display both balls
  ball.display();
  ball2.display();
}


// define the Ball class

class Ball
{
  // member variables
  
  int x;
  int y;
  int vx;
  int vy;
  
  // member functions
 
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