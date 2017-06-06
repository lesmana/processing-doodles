
Doodle doodle;

void setup() {
  size(600, 600);
  doodle = getDoodle();
  doodle.setup();
}

void draw() {
  doodle.draw();
}

interface Doodle {
  void setup();
  void draw();
}

Doodle getDoodle() {
  String arg;
  if (args != null) {
    arg = args[0];
  } else {
    arg = "no arg";
  }
  Doodle doodle = null;
  switch (arg) {
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
    case "no arg":
      println("no args given");
      break;
    default:
      println("unknown arg: " + arg);
      break;
  }
  if (doodle == null) {
    println("default to circlewave");
    doodle = new CircleWave();
  }
  return doodle;
}