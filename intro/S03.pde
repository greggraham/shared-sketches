class S03 extends Scene {
  PFont f;
  float x, y, r, theta, dt;
  
  void setup() {
    f = loadFont("Georgia-48.vlw");
    r = height * 0.4;
    theta = 0;
    dt = 0.01;
  }
  
  void start() {
    textFont(f);
    colorMode(HSB, 255);
    textAlign(CENTER, CENTER);
  }
  
  void draw() {
    background(0);
    x = r * cos(theta) + width / 2;
    y = r * sin(theta) + height / 2;
    theta += dt;
    fill(200, 200, 255);
    String msg = "Explore!\nExperiment!\nAlways be programming!"; 
    text(msg, x, y);
  }

}
