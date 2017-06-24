
class lineintersect implements Doodle {

void setup() {
  stroke(0);
}

void draw() {
  background(255);
  pushMatrix();
  translate(width / 2 - 5, height - 150);
  rotate(radians(-frameCount * 0.1)); //<>//
  for(int i = 0; i < 60; i++) {
    rotate(radians(3));
    line(-600, 0, 600, 0);
  }
  popMatrix();
  pushMatrix();
  translate(width / 2 + 5,  height - 150);
  rotate(radians(frameCount * 0.1));
  for(int i = 0; i < 60; i++) {
    rotate(radians(3));
    line(-600, 0, 600, 0);
  }
  popMatrix();
  if(frameCount % 60 == 0) {
    println(frameRate);
  }
}

}
