int DIAMETER = 15;
int SPACING = DIAMETER + 5;
int colors[] = {0, 128, 0, 255};

size(200, 800);
background(80);

for (int y = SPACING / 2; y <= height - SPACING / 2; y += SPACING) {
  for (int x = SPACING / 2; x <= width - SPACING / 2; x += SPACING) {
    int xindex = x / SPACING;
    int yindex = y / SPACING;
    fill(colors[(xindex + yindex) % 4]);
    ellipse(x, y, DIAMETER, DIAMETER);
  }
}
