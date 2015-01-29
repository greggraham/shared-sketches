int radius = 50;
int buttonX = 200;
int buttonY = 200;

void setup() {
  size(400, 400);
  smooth();
  strokeWeight(5);
}

void draw() {
  if (dist(buttonX, buttonY, mouseX, mouseY) < radius) {
    if (mousePressed) {
      fill(255);
    } else {
      fill(100);
    }
  } else {
    fill(0);
  }
  ellipse(buttonX, buttonY, radius * 2, radius * 2);
}
