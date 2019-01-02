
void setup() {
  size(400, 400);
  stroke(0);
}

void draw() {
  background(255);
  translate(200, 200);
  for (int i = 20; i > 1; i--) {
    rotate(radians(sin(radians(frameCount))));
    star(0, 0, i * 5);
  }
}

void star(int x, int y, int s) {
  pushMatrix();
  translate(x, y);
  rotate(radians(-60));
  translate(s, 0);
  rotate(radians(60));
  line(0, 0, s, 0);
  translate(s, 0);
  rotate(radians(120));
  line(0, 0, s, 0);
  translate(s, 0);
  rotate(radians(-60));
  line(0, 0, s, 0);
  translate(s, 0);
  rotate(radians(120));
  line(0, 0, s, 0);
  translate(s, 0);
  rotate(radians(-60));
  line(0, 0, s, 0);
  translate(s, 0);
  rotate(radians(120));
  line(0, 0, s, 0);
  translate(s, 0);
  rotate(radians(-60));
  line(0, 0, s, 0);
  translate(s, 0);
  rotate(radians(120));
  line(0, 0, s, 0);
  translate(s, 0);
  rotate(radians(-60));
  line(0, 0, s, 0);
  translate(s, 0);
  rotate(radians(120));
  line(0, 0, s, 0);
  translate(s, 0);
  rotate(radians(-60));
  line(0, 0, s, 0);
  translate(s, 0);
  rotate(radians(120));
  line(0, 0, s, 0);
  translate(s, 0);
  popMatrix();
}
