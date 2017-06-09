
/**
 * Adds collision functionality to all child classes
 * Anything needing to make use of collision must inherit from this class
 */
class CollidableObject {
  Collider collider;  // create new Collider to store collision bounds
  boolean canCollide = true;  // is the object able to collide
  boolean collided = false;  // is the object currently collided
  int x, y, Width, Height;

  CollidableObject(int x, int y, int Width, int Height) {  // constructor for box colliders
    this.x = x;
    this.y = y;
    this.Width = Width;
    this.Height = Height;
    collider = new Collider(x, y, Width, Height);
  }

  ////////////
  // UNTESTED
  ////////////
  boolean checkCollision(CollidableObject other) {
      for (Point p : collider.corners) {  // loop through all corner points of this object
        // check if any of the corner points are inside the other collider volume
        if (abs((float)p.getX() - (float)collider.centerPoint.getX()) < other.collider.Width / 2 &&
          abs((float)p.getY() - (float)collider.centerPoint.getY()) < other.collider.Height) {
          collided = true;
          other.collided = true;
          canCollide = false;
          other.canCollide = false;
          return true;
        }
      }
    return false;
  }
}