
void setup() {
  size(600, 600);
  stroke(0);
  strokeWeight(10);
}

void draw() {
  background(255);
  translate(10, 10);
  for(int y = 1; y < 29; y++) {
    for(int x = 1; x < 29; x++) {
      pushMatrix();
      translate(x * 20, y * 20);
      float modX = 12 * x;
      float modY = 12 * y;
      float angle = radians((frameCount * 2) + modX + modY);
      float dotX = sin(angle) * 10;
      float dotY = cos(angle) * 10;
      point(dotX, dotY);
      popMatrix();
    }
  }
}
