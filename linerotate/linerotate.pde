
void setup() {
  size(300, 300);
  stroke(0);
  strokeWeight(3);
}

void draw() {
  background(255);
  translate(150, 150);
  for(int i = 1; i < 20; i++) {
    rotate(radians(frameCount * 0.1));
    line(-140, 30, 140, 30);
  }
}
