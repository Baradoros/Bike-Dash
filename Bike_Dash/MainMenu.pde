class MainMenu {

  ArrayList<Cloud> clouds;
  long currentTime;
  int waitTime;
  MainMenu() {
    clouds = new ArrayList<Cloud>();
    currentTime = System.currentTimeMillis();
    waitTime = 1000;
  }

  void drawMenu() {
    background(#249AFF);
    textAlign(CENTER);
    textSize(190);
    fill(100);
    text("BIKE DASH", width / 2, height / 4);
    textSize(48);
    text("PRESS SPACE TO START", width / 2, height * 0.75);
  }

  void update() {
  }
  
  void manageClouds() {
    if (currentTime < System.currentTimeMillis() - waitTime) {
      currentTime = System.currentTimeMillis();
      waitTime = floor(random(500, 5000));
      clouds.add(new Cloud());
    }
  }
}