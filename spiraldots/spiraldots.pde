
void setup() {
  size(600, 600);
  stroke(0);
  strokeWeight(8);
}

boolean foo(int i, int x) {
  return (i % x) == (frameCount % x);
}

void draw() {
  background(255);
  translate(width / 2, height / 2);
  for(int i = 1; i < 9842; i++) {
    rotate(1.0/sqrt(i));
    translate(2.3, 0);
    if (foo(i, 19)) {
      point(0, 0);
    }
  }
}
