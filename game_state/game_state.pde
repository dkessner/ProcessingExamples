//
// game_state.pde
//

int gameState = 0;

void setup()
{
  size(400, 400); 
}

void drawStart()
{
  text("This is an awesome game", 100, 200);  
}

void drawGame()
{
  ellipse(200, 200, 100, 100);
}

void drawEnd()
{
  text("GAME OVER", 100, 200);
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
  gameState++;
  
  if (gameState > 2)
    gameState = 0;
}

