
class pulsedots implements Doodle {

void setup() {
  stroke(0);
}

void draw() {
  background(255);
  translate(width / 2, height / 2);
  for(int y = -14; y < 15; y++) {
    for(int x = -14; x < 15; x++) {
      int dotX = x * 20;
      int dotY = y * 20;
      float dotDist = dist(0, 0, dotX, dotY);
      dotDist = map(dotDist, 0, 300, 0, 800);
      float dotSin = sin(radians(dotDist - (frameCount * 5)));
      float dotWeight = map(dotSin, -1, 1, 2, 20);
      strokeWeight(dotWeight);
      point(dotX, dotY);
    }
  }
}

}
