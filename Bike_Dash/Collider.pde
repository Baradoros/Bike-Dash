import java.awt.Point;
/**
 * Stores the parents collision bounds.
 *
 */
class Collider {

  String type;
  int x, y, Height, Width;
  Point centerPoint;
  Point[] corners = new Point[4];
  Collider(String type, int x, int y, int Height, int Width) {
    this.type = type;
    this.x = x;
    this.y = y;
    this.Height = Height;
    this.Width = Width;
    centerPoint = new Point(round((int)x + (Width / 2)), round(y + (Height / 2)));
    if (type == "Box") {
      corners[0] = new Point(x, y);
      corners[1] = new Point(Width, y);
      corners[2] = new Point(Width, Height);
      corners[4] = new Point(x, Height);
    }
  }
  
}