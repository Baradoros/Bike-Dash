
/**
 * Stores the parents collision bounds.
 *
 */
class Collider {

  String type;
  float x, y, Height, Width;
  Collider(String type, float x, float y, float Height, float Width) {
    this.type = type;
    this.x = x;
    this.y = y;
    this.Height = Height;
    this.Width = Width;
  }
  
}