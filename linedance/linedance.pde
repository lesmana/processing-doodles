
void setup() {
  size(200, 600);
  strokeWeight(2);
}

void draw() {
  background(255);
  for(int i = 0; i < 120; i++) {
    float a = radians(frameCount + (97 * i));
    float x1 = 5;
    float y1 = i * 5 - sin(a) * 20;
    float x2 = 195;
    float y2 = i * 5 - sin(a + PI) * 20;
    line(x1, y1, x2, y2);
  }
}
