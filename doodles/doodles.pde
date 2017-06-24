
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
        doodle = new circlewave();
        break;
      case "lineintersect":
        doodle = new lineintersect();
        break;
      case "linerotate":
        doodle = new linerotate();
        break;
      case "pulsedots":
        doodle = new pulsedots();
        break;
      case "waveawaydots":
        doodle = new waveawaydots();
        break;
      case "wavedots":
        doodle = new wavedots();
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
    doodle = new circlewave();
  }
  return doodle;
}
