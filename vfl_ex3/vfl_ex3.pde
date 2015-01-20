size(400, 400);
int x = 175;
int h = 50;
int w = 50;
for (int y = 30; y + h < height; y += 70) {
  rect(x, y, w, h);
  w += 50;
  x -= 25;
}



