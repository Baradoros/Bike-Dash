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