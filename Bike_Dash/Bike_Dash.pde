
ArrayList <Platforms> platforms;
int wait;

void setup() {
  fullScreen();
  platforms = new ArrayList <Platforms>();
  // length between the half of the screen and until the new platform forms
  wait = floor(random(0,width/4));
}

void draw() {
  background(200);

  //wait platforms!
  // if a platform passes over the half of the screen plus the wiating time, new platform recreates.
  if (platforms.get(0).x < (width/2) +wait) {
    platforms.add(new Platforms());
    wait = floor(random(0, width/4));
  }

  //whenever we call the Platforms called p, go through what is inside the platforms)
  for (Platforms p : platforms) {
    p.update();
    p.drawPlatforms();
  }
}

void keyPressed() {
}

void mousePressed() {
}