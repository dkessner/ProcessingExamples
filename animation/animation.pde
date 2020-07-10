//
// animation.pde
//


// declare a variable for the x coordinate of the ball 

int x = 25;


// The setup() function is called once at the start.

void setup()
{
    size(400, 400);
}

// The draw() function is called each frame.

void draw()
{
    // draw the circle using the current value of x

    background(0);
    fill(0, 0, 255);
    ellipse(x, 200, 50, 50);

    // update x

    x = x + 1;

    // if we move off screen, reset position

    if (x > width + 25)
        x = -25;
}
