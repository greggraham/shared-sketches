// This is a variation of the sketch 6-08 on p.65 of Reas & Fry's
// blue book.

noStroke();
smooth();
size(500, 500);
for (int y = -10; y <= height; y += 10) {
  fill(map(y, 0.0, height, 0.0, 256.0), 10);
  for (int x = -10; x <= width; x+= 10) {
    ellipse(x + y/8.0, y + x/8.0, 15 + x/2, 10);
  }
}
