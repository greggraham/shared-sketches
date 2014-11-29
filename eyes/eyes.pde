// Fun with eyes from blue book p.184.

void pupil(float x, float xOffset, float y, float yOffset) {
  noStroke();
  fill(57, 196, 76);
  ellipse(x+xOffset, y+yOffset, 30, 30);
  fill(0);
  float offsetScale = 1.3;
  ellipse(x+xOffset*offsetScale, y+yOffset*offsetScale, 15, 15);
}

void eye(float x, float y) {
  stroke(0);
  strokeWeight(3);
  fill(255);
  ellipse(x, y, 60, 60);
  pupil(x, random(-10.0, 10.0), y, random(-10.0, 10.0));
}

void setup() {
  size(500, 500);
  smooth();
  frameRate(3);
}

void draw() {
  eye(random(0, width), random(0, height));
}
