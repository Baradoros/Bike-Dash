
class Scoreboard {
  int x;
  Scoreboard() {
    x=0;
  }
  void update() {
    //if (bike passes the pipe) {
    //  x++;
    //}
  }

  void drawScoreboard() {
    textSize(15);
    text( "Score " + x, width*.8, height*.1);
  }
}