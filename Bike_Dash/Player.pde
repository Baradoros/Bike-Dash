    bikexpos = width/3;
  }
  void drawPLAYER() {
    fill(255, 0, 0);
    rect(playerX, playerY, size, tall);
  }

  void update() {
    playerY-=speed;
    speed-= 0.7;
