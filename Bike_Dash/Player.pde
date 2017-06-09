

class Player {
  float speed;
  float playerX, playerY;
  PImage bike;
  float size, tall;
  boolean move;

  Player () {
    size = width/5;
    tall = height/8;
    move = true;
    speed = .7;
    playerX= width/2;
    playerY= height/4;
  }

  void drawPLAYER() {
    fill(255, 0, 0);
    rect(playerX, playerY, size, tall);
  }

  void update() {
    playerY-=speed;
    speed-= 0.7;
  }
}