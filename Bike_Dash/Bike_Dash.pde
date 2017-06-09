Player player;

void setup() {
  fullScreen();
  background(200);
  rectMode(CENTER);
  player = new Player();
}

void draw() {
  background(200);
  player.drawPLAYER();
  player.update();
}

void keyPressed() {
  if (key == ' ') {
    player.speed = 15;
  }
}

void mousePressed() {
  if (mousePressed) {
    player.speed = 15;
  }
}