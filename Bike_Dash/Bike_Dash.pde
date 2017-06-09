
Scoreboard scoreboard;

void setup() {
  fullScreen();
  background(200);
  scoreboard= new Scoreboard();
}

void draw() {
  scoreboard.update();
  scoreboard.drawScoreboard();
}

void keyPressed() {
}

void mousePressed() {
}