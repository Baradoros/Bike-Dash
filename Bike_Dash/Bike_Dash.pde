
int currentState;
final int PLAY = 0;
final int GAME_OVER = 1;
final int MAIN_MENU = 2;
final int HIGH_SCORES = 3;

MainMenu mm = new MainMenu();
Player player;

void setup() {
  rectMode(CENTER);
  fullScreen();
  background(200);
  currentState = MAIN_MENU;
  player = new Player();
}

void draw() {
  switch(currentState) {
  case PLAY:

    background(200);
    player.drawPLAYER();
    player.update();
    break;

  case GAME_OVER:
    gameOver();
    break;

  case MAIN_MENU:
    mm.update();
    mm.drawMenu();
    break;

  case HIGH_SCORES:
    break;
  }
}

void gameOver() {
  background(0);
  textAlign(CENTER);
  textSize(96);
  fill(255, 0, 0);
  text("GAME OVER", width / 2, height / 2);
}

void keyPressed() {
  if (key == ' ') {
    if (currentState == PLAY) {
      //player jumps
      player.speed = 15;
    } else if (currentState == MAIN_MENU)
      currentState = PLAY;
    else if (currentState == GAME_OVER)
      currentState = MAIN_MENU;
  }
}

void mousePressed() {
  if (mousePressed) {
    if (currentState == PLAY) {
      //player jumps
      player.speed = 15;
    } else if (currentState == MAIN_MENU)
      currentState = PLAY;
    else if (currentState == GAME_OVER)
      currentState = MAIN_MENU;
  }
}