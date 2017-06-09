
/**
 * Adds collision functionality to all child classes
 * Anything needing to make use of collision must inherit from this class
 */
class CollidableObject {
  Collider collider;  // create new Collider to store collision bounds
  boolean canCollide = true;  // is the object able to collide
  boolean collided = false;  // is the object currently collided

  CollidableObject() {
    collider = new Collider("Circle", 0, 0, 10, 10);
  }

  boolean checkCollision(CollidableObject other) {

    for (Point p : collider.corners) {  // loop through all corner points of this object
      // check if any of the corner points are inside the other collider volume
      if (abs((float)p.getX() - (float)collider.centerPoint.getX()) < other.collider.Width / 2 &&
          abs((float)p.getY() - (float)collider.centerPoint.getY()) < other.collider.Height) {
            collided = true;
            canCollide = false;
            return true;
          }
    }
    return false;
  }
}