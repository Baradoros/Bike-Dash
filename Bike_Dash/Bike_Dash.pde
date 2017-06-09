
ArrayList <Platforms> platforms;

void setup() {
  fullScreen();
<<<<<<< HEAD
  platforms = new ArrayList <Platforms>();
}

void draw() {
  
  for (Platforms p : platforms) {
    p.update();
    p.drawPlatforms();
  }
  for (int i=0; i<platforms.size(); i++) {
    if (platforms.get(i).x < 0 ) {
      platforms.remove(i);
    }
  }
=======
  background(200);
}

void draw() {
}

void keyPressed() {
}

void mousePressed() {
>>>>>>> master
}