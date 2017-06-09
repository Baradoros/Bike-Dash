

class Rectangles {
  //down rectangles
  float xd; //where the rectangles start in width
  float yd; //where the rectangles start in height
  float wd; //how thick the rectangles are
  float hd; //how tall the rectangles are
  //up rectangles
  float xu;
  float yu;
  float wu;
  float hu;

  float speed;

  Rectangles() {
    
    speed=.7;
    
    xd = width;
    yd = floor(random(height*.5, height*.75));
    wd = width/20;
    hd = height;

    xu= xd;
    yu = 0;
    wu = wd;
    //(height of the lower rectangles) - (player height + gaps)
    hu = yd - (height/8 + height*.2);
  }

  void update() {
    speed-=speed;
  }

  void drawRectangles() {
    rect(xd, yd, wd, hd);
    rect(xu, yu, wu, hu);
  }
}