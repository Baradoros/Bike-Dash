
int currentState;
final int PLAY = 0;
final int GAME_OVER = 1;
final int MAIN_MENU = 2;
final int HIGH_SCORES = 3;


void setup() {
  fullScreen();
  background(200);
  currentState = 1;
}

void draw() {
  switch(currentState) {
    case PLAY:
    break;
    
    case GAME_OVER:
      drawGameOverScreen();
    break;
    
    case MAIN_MENU:
    break;
    
    case HIGH_SCORES:
    break;
  }
}

void drawGameOverScreen() {
  background(0);
  textAlign(CENTER);
  textSize(96);
  fill(255,0,0);
  text("GAME OVER", width / 2, height / 2);
}

void keyPressed() {
}

void mousePressed() {
}