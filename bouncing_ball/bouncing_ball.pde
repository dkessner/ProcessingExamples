//
// bouncing_ball.pde
//

int x = 200;
int y = 200;
int vx = 3;
int vy = 2;

void setup()
{
    size(400, 400);
}

void draw()
{
    background(0);

    // draw the ball
    fill(0, 255, 0);
    ellipse(x, y, 50, 50);

    // update position
    x += vx;    // this is shorthand for: x = x + vx
    y += vy;

    // bounce off walls
    if (x<25 || x>width-25)
        vx = -vx;
    if (y<25 || y>height-25)
        vy = -vy;
}
