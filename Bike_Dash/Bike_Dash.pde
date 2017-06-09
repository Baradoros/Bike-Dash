Player player;
ArrayList <Rectangles> rectangles;

void setup() {
  fullScreen();
  background(200);
  rectMode(CENTER);
  player = new Player();
  rectangles = new ArrayList <Rectangles>();
}

void draw() {
  background(200);
  player.drawPLAYER();
  player.update();
    
    //distance between an old rectangle and a new rectangle will width/15
    if (rectangles.get(0).xd == width - width/15) {
      rectangles.add(new Rectangles());
    }
    
    for (Rectangles r: rectangles) {
      r.update();
      r.drawRectangles();
    }
}

void keyPressed() {
  if (key == ' ') {
    //player jumps
    player.speed = 15;
  }
}

void mousePressed() {
  if (mousePressed) {
    //player jumps
    player.speed = 15;
  }
}