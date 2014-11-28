int iwidth = 142;
int iheight = 105;
size(851, 315); // Facebook cover photo
PImage img = loadImage("biplane.jpg");
for (int y = 0; y < height; y += iheight) {
  for (int x = 0; x < width; x += iwidth) {
    float blue = random(50, 255);
    float green = random(50, 255);
    float red = random(50, 255);
    tint(red, green, blue);
    image(img, x, y, iwidth, iheight);
  }
}

