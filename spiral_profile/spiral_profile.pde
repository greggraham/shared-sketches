size(521, 529);
PImage img = loadImage("fb-profile.jpg");
image(img, 0, 0, width, height);
noStroke();
smooth();
fill(22, 37, 255, 30);
float radius = 1.0;
for (int deg = 0; deg < 360*40; deg += 11) {
  float angle = radians(deg);
  float x = 299 + (cos(angle) * radius);
  float y = 217 + (sin(angle) * radius);
  ellipse(x, y, 20, 20);
  radius += 0.34;
}
save("spiral-profile.jpg");


