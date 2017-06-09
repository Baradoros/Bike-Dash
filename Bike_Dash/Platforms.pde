
class Platforms {

  float x;
  float y;
  float z;

  Platforms() {
    
    //platforms start from the right edge of the screen
    x= width;
    
    //random height of platforms
    y= floor (random (height-10, height-height/2));
    
    //random length of platforms
    z= floor (random (width*.1, width*.8));
  }

  void drawPlatforms() {
    
    fill (255,0,0);
    //size of the platforms
    rect( x, y, z, 20);
    
  }

  void update() {
    x-=5;
  }
}