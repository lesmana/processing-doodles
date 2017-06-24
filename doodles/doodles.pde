
Doodle doodle;

void setup() {
  size(600, 600);
  doodle = getDoodle(args);
  doodle.setup();
}

void draw() {
  doodle.draw();
}

interface Doodle {
  void setup();
  void draw();
}

Doodle getDoodle(String[] args) {
  Doodle doodle = null;
  if (args != null) {
    switch (args[0]) {
      case "circlewave":
        doodle = new CircleWave();
        break;
      case "lineintersect":
        doodle = new LineIntersect();
        break;
      case "linerotate":
        doodle = new LineRotate();
        break;
      case "pulsedots":
        doodle = new PulseDots();
        break;
      case "waveawaydots":
        doodle = new WaveAwayDots();
        break;
      case "wavedots":
        doodle = new WaveDots();
        break;
      default:
        println("unknown arg: " + args[0]);
        break;
    }
  } else {
    println("no args given");
  }
  if (doodle == null) {
    println("default to circlewave");
    doodle = new CircleWave();
  }
  return doodle;
}
