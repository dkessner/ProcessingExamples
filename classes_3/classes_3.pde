//
// classes_3
//


// declare an ArrayList of Ball objects
ArrayList<Ball> balls;


void setup()
{
  size(400, 400);

  // create the new list
  balls = new ArrayList<Ball>();
  
  // add some Ball objects to the list
  for (int i=0; i<10; i++)
  {
     Ball b = new Ball(200, 200, random(-3, 3), random(-3, 3));
     balls.add(b);
  }
}


void draw()
{
  background(0);
  
  // display all the balls in the list
  for (Ball b : balls)
    b.display();

  textAlign(CENTER);
  fill(255);
  text("UP/DOWN: add/remove", width/2, height-50);
}


void keyPressed()
{
    if (keyCode == UP)
      balls.add(new Ball(200, 200, random(-3, 3), random(-3, 3)));
    else if (keyCode == DOWN && balls.size() > 0)
      balls.remove(0);
}


class Ball
{
  float x;
  float y;
  float vx;
  float vy;
  int c;
  
  Ball(float xIn, float yIn, float vxIn, float vyIn)
  {
     x = xIn;
     y = yIn;
     vx = vxIn;
     vy = vyIn;
     c = color(random(256), random(256), random(256));
  }
  
  void display()
  {
    fill(c);
    ellipse(x, y, 50, 50);
    
    x += vx;
    y += vy;
    
    if (x<0 || x>width)
      vx = -vx;
      
    if (y<0 || y>height)
      vy = -vy;
  }
}
