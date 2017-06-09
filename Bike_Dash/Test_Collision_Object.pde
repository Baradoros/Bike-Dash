class TestCollisionObject extends CollidableObject {
  TestCollisionObject(int x, int y, int Width, int Height) {
    super(x, y, Width, Height);
  }
  
  void drawSelf() {
    fill(0,0,255);
    rect(x, y, Width, Height);
  }
  
}