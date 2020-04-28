
void setup() {
  size(400, 400);
  stroke(0);
  strokeWeight(6);
}

void draw() {
  background(255);
  translate(width / 2, height / 2);
  for(int i = 2; i < 150; i++) {
    rotate(radians(frameCount / 30.0));
    point(0, i * 1.1);
  }
}
