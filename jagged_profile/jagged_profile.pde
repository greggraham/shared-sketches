size(521, 529);
PImage img = loadImage("fb-profile.jpg");
image(img, 0, 0, width, height);
int sliceWidth = 30;
int offset = 10;
int sliceNum = 0;
for (int y = 0; y < height; y += sliceWidth) {
  if (sliceNum % 2 == 0) {
    PImage slice = get(0, y, width, sliceWidth);
    set(offset, y, slice);
  }
  sliceNum++;
}
save("jagged-profile.jpg");


