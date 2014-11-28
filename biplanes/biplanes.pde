int iwidth = 250;
int iheight = 200;
size(iwidth * 4, iheight * 4);
PImage img = loadImage("biplane.jpg");
for (int y = 0; y < width; y += iheight) {
  for (int x = 0; x < width; x += iwidth) {
    float blue = map(x, 0, width, 20, 255);
    float green = map(y, 0, height, 20, 255);
    float red = 255 - blue;
    tint(red, green, blue);
    image(img, x, y, iwidth, iheight);
  }
}

