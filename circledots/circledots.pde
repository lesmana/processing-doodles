
void setup() {
  size(600, 600);
  stroke(0);
  strokeWeight(8);
}

void draw() {
  background(255);
  translate(width / 2, height / 2);
  for(int i = 2; i < 200; i++) {
    rotate(radians(frameCount / 30.0));
    point(0, i * 1.2);
  }
}
