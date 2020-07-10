//Here are some useful basic font examples!!

//declare PFont object
PFont fontOne;
PFont fontTwo;
PFont fontThree;

int score;

void setup() {
  size(500, 500);

  /*Initialize fonts. 
  You can see available fonts in the Tools --> Create Font tab. 
  Make sure the name is spelled exactly as it appears in the list
  Second number is font size in pixels*/
  fontOne = createFont("NanumPen", 48);
  fontTwo = createFont("Silom", 48);
  fontThree = createFont("Helvetica", 48);

  score = 0;
}

void draw() {
  background(#ADD3CB);
  
  //you can change the color of fonts with fill
  fill(#A277D3);
  
  //textAlign justifies the font to the right, left, or center
  textAlign(RIGHT);
  
  //textFont sets the font you want to use and its size 
  textFont(fontOne, 30);
  
  //text has parameters "text", x position and y position
  text("NanumPen aligned right", width/2, height/2-150);
  
  textAlign(CENTER);
  textFont(fontTwo, 30);
  text("Silom aligned center", width/2, height/2-100);

  textAlign(LEFT);
  textFont(fontThree, 25);
  text("Helvetica aligned left", width/2, height/2-50);

  //another way to change font size
  textSize(20);
  
  /*You can add two more parameters to text function 
  for the width and height of a rectangle
  This wraps the text in a box*/
  String words = "Here is text in a box, perhaps this could be useful someday.";
  text(words,150,250,200,100);

  fill(#EA7693);
  textAlign(CENTER);
  text("Press space to increase score", width/2, height/2 +175);

  //you can also display variables using the text function
  text("SCORE: " + score, width/2, height/2+200);
}

void keyPressed() {
  if (key == ' ') {
    score++;
  }
}