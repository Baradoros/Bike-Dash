
/**
 * Adds collision functionality to all child classes
 * Anything needing to make use of collision must inherit from this class and call super() in it's constructor(s)
 */
class CollidableObject {
  
  Collider collider;  // create new Collider to store collision bounds
  boolean collided = false;  // is the object currently collided
  int x, y, Width, Height;

  CollidableObject(int x, int y, int Width, int Height) {  // constructor for box colliders
    this.x = x;
    this.y = y;
    this.Width = Width;
    this.Height = Height;
    collider = new Collider(x, y, Width, Height);  // Initialize collider with the dimensions of the object
  }

  /**
  * Checks collision between any two objects that inherit from CollidableObject
  */
  boolean checkCollision(CollidableObject other) {
    for (Point p : collider.corners) {  // loop through all corner points of this object
      // check if any of the corner points are inside the other collider volume
      if (abs((float)p.getX() - (float)other.collider.centerPoint.getX()) < other.collider.Width / 2 &&
        abs((float)p.getY() - (float)other.collider.centerPoint.getY()) < other.collider.Height) {
        collided = true;  // sets collided to true
        other.collided = true;  // sets the other's collided to true
        return true;  // since there was collision, return true
      }
    }
    return false;  // if there was no collision, return false
  }
}