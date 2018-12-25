void setup() {
  size(620, 220);
  noFill();
  stroke(0);
  strokeWeight(18);
  strokeCap(SQUARE);
}

void draw() {
  background(255);
  translate(10, 10);
  for(int i = 0; i < 30; i++) {
    int x = (i * 20) + 10;
    float y = (sin(radians(frameCount + (18 * i))) + 1) * 100;
    line(x, 200, x, y);
  }
}
