
void setup() {
  size(600, 600);
  stroke(0);
}

void draw() {
  background(255);
  translate(10, 10);
  for(int y = 0; y < 30; y++) {
    for(int x = 0; x < 30; x++) {
      int dotX = x * 20;
      int dotY = y * 20;
      float dotDist = dist(dotX, dotY, mouseX, mouseY);
      float dotWeight = map(dotDist, 0, 150, 2, 10); 
      strokeWeight(dotWeight);
      point(dotX, dotY);
    }
  }
}