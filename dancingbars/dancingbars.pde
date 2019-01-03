void setup() {
  size(620, 220);
  noFill();
  stroke(0);
  strokeWeight(4);
}

void draw() {
  background(255);
  translate(10, 10);
  for(int i = 0; i < 120; i++) {
    int x = (i * 5) + 2;
    float y = map(sin(radians(frameCount + (4 * i))), -1, 1, 0, 200);
    line(x, 200, x, y);
  }
}
