
void setup() {
  size(400, 400);
  noFill();
}

void draw() {
  background(255);
  //scale(0.2);
  //rect(0, 0, 400, 400);
  translate(200, 900);
  stroke(16);
  strokeWeight(8);
  circle(0, 0, 12);
  for(int i = 1; i < 25; i++) {
    int r = (i * 48) + 900;
    circle(0, 0, r);
  }
  translate(20, 20);
  stroke(72);
  strokeWeight(10);
  circle(0, 0, 10);
  for(int i = 1; i < 30; i++) {
    int r = (i * 40) + 900 + (int(frameCount * 0.5) % 40);
    circle(0, 0, r);
  }
}
