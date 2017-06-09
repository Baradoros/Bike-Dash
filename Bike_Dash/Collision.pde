
/**
* Adds collision functionality to all child classes
* Anything needing to make use of collision must inherit from this class
*/
class Collision {
  Collider collider;  // create new Collider to store collision bounds
  boolean canCollide = false;  // is the object able to collide
  boolean collided = false;  // is the object currently collided
  
  Collision() {
    collider = new Collider("Circle", 10, 10);
    
  }
  
  boolean checkCollision(Collision other) {
    
    return false;
  }
  
  
  
}