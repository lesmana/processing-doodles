void setup() {
  size(620, 220);
  noFill();
  stroke(0);
  strokeWeight(4);
  strokeCap(SQUARE);
}

void draw() {
  background(255);
  translate(10, 10);
  for(int i = 0; i < 120; i++) {
    int x = (i * 5) + 2;
    float y = (sin(radians(frameCount + (4 * i))) + 1) * 100;
    line(x, 200, x, y);
  }
}
