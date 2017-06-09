
int currentState;
final int PLAY = 0;
final int GAME_OVER = 1;
final int MAIN_MENU = 2;
final int HIGH_SCORES = 3;


void setup() {
  fullScreen();
  background(200);
  currentState = MAIN_MENU;
}

void draw() {
  switch(currentState) {
    case PLAY:
    break;
    
    case GAME_OVER:
      gameOver();
    break;
    
    case MAIN_MENU:
      mainMenu();
    break;
    
    case HIGH_SCORES:
    break;
  }
}

void gameOver() {
  background(0);
  textAlign(CENTER);
  textSize(96);
  fill(255,0,0);
  text("GAME OVER", width / 2, height / 2);
}

void mainMenu() {
  background(#249AFF);
  textAlign(CENTER);
  textSize(190);
  fill(100);
  text("BIKE DASH", width / 2, height / 4);
  textSize(48);
  text("PRESS SPACE TO START", width / 2, height * 0.75);
}

void keyPressed() {
}

void mousePressed() {
}