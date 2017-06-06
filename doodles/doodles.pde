
Doodle doodle;

void setup() {
  size(600, 600);
  doodle = new CircleWave();
  doodle.setup();
}

void draw() {
  doodle.draw();
}

interface Doodle {
  void setup();
  void draw();
}