import java.awt.Point;
/**
 * Stores the parents collision bounds.
 *
 */
class Collider {

  int x, y, Height, Width;
  Point centerPoint;
  Point[] corners = new Point[4];
  
  Collider(int x, int y, int Height, int Width) {
    this.x = x;
    this.y = y;
    this.Height = Height;
    this.Width = Width;
    centerPoint = new Point(round((int)x + (Width / 2)), round(y + (Height / 2)));  // compute center point and store it
    corners[0] = new Point(x, y);  // top left
    corners[1] = new Point(x + Width, y);  // top right
    corners[2] = new Point(x + Width, y + Height);  // bottom right
    corners[3] = new Point(x, y + Height);  // bottom left
  }
}