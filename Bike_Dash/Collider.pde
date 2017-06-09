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
    centerPoint = new Point(round((int)x + (Width / 2)), round(y + (Height / 2)));
    corners[0] = new Point(x, y);
    corners[1] = new Point(Width, y);
    corners[2] = new Point(Width, Height);
    corners[3] = new Point(x, Height);
  }
}