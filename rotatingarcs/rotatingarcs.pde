
int centerX;
int centerY;

void setup() {
  size(300, 300);
  centerX = width / 2;
  centerY = height / 2;
  noFill();
  stroke(0);
  strokeWeight(4);
  strokeCap(SQUARE);
}

void draw() {
  background(255);
  translate(centerX, centerY);
  for(int i = 2; i < 20; i++) {
    rotate(radians(frameCount / 10.0));
    arc(0, 0, i * 13, i * 13, 0, PI);
  }
}
