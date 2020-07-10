//
// game_state.pde
//

int gameState = 0;
int x = 100;
int y = 100;

void setup()
{
  size(400, 400); 
  textAlign(CENTER);
}

void drawStart()
{
  text("Awesome Video Game", 200, 200);  
  text("Click to continue", 200, 300);  
}

void drawGame()
{
  fill(255);
  text("Use arrow keys to move", 200, 25);
  rect(300, 300, 100, 100);
  fill(0);
  text("Goal", 350, 350);

  fill(0, 255, 0);
  ellipse(x, y, 100, 100);
}

void drawEnd()
{
  fill(255);
  text("GAME OVER", 200, 200);
  text("Click to play again!", 200, 300);  
}

void draw()
{
  background(0);
  
  if (gameState == 0)
    drawStart();
  else if (gameState == 1)
    drawGame();
  else if (gameState == 2)
    drawEnd();
}

void mousePressed()
{
  if (gameState == 0)
    gameState = 1;
  else if (gameState == 2)
  {
    gameState = 0;
    x = 100;
    y = 100;
  }
}

void keyPressed()
{
  if (keyCode == RIGHT)
    x += 25;
  else if (keyCode == LEFT)
    x -= 25;
  else if (keyCode == DOWN)
    y += 25;
  else if (keyCode == UP)
    y -= 25;

  if (dist(x, y, 350, 350) < 50)
    gameState = 2;
}


