int DIAMETER = 15;
int SPACING = DIAMETER + 5;

size(200, 800);
background(50);

for (int y = SPACING / 2; y <= height - SPACING / 2; y += SPACING) {
  for (int x = SPACING / 2; x <= width - SPACING / 2; x += SPACING) {
    int xindex = x / SPACING;
    int yindex = y / SPACING;
    switch ((xindex + yindex) % 3) {
      case 0:
        fill(0);
        break;
      case 1:
        fill(255);
        break;
      case 2:
        fill(128);
        break;
    }
    ellipse(x, y, DIAMETER, DIAMETER);
  }
}
