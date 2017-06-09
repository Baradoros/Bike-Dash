void setup() {
  fullScreen();
  background(200);
  TestCollisionObject tc1 = new TestCollisionObject(width / 2, height / 2, 50, 50);
  TestCollisionObject tc2 = new TestCollisionObject(width / 2 + 40, height / 2 + 40, 50, 50);
  tc1.drawSelf();
  tc2.drawSelf();
  println(tc1.collided);
}

void draw() {
}

void keyPressed() {
}

void mousePressed() {
}