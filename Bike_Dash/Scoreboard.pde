
class Scoreboard {
  int score;
  Scoreboard() {
    score=0;
  }
  void update() {
    //if (bike passes the pipe) {
    //  score += 10;
    //}
  }

  void drawScoreboard() {
    textSize(15);
    text( "Score " + score, width*.8, height*.1);
  }
}