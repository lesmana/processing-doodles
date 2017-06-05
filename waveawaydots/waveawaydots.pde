
void setup() {
  size(600, 600);
  stroke(0);
  strokeWeight(10);
}

void draw() {
  background(255);
  for(int y = 1; y < 29; y++) {
    for(int x = 1; x < 60; x++) {
      pushMatrix();
      translate(x * 10, y * 20);
      float rotDeg = (frameCount * 5) + x * 12;
      float rotRad = radians(rotDeg);
      float dotX = cos(-rotRad) * 10;
      float dotY = sin(-rotRad) * 10;
      point(dotX, dotY);
      popMatrix();
    }
    y++;
    for(int x = 1; x < 60; x++) {
      pushMatrix();
      translate(x * 10, y * 20);
      float rotDeg = (frameCount * 5) + x * 12;
      float rotRad = radians(rotDeg);
      float dotX = cos(rotRad) * 10;
      float dotY = sin(rotRad) * 10;
      point(dotX, dotY);
      popMatrix();
    }
  }
  if(frameCount % 60 == 0) {
    println(frameRate);
  }
}