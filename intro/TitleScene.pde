class TitleScene extends Scene {
  PFont f;
  float theta = 0;
  float delta = 0.02;
  
  void setup() {
    f = loadFont("Georgia-48.vlw");
  }
  
  void start() {
    textFont(f);
    textAlign(CENTER, CENTER);
    colorMode(HSB, 1.0);
  }

  void draw() {
    background(0.2, 0.3, sin(theta));
    fill(0.2, 0.3, 0.5);
    ellipse(width/2, height/2, width * 0.8, height * 0.8);
    fill(0.2, 0.3, 1.0 - sin(theta));
    String msg = "Welcome to Graphics Programming!"; 
    text(msg, width/2, height/2);
    theta += delta;
  }  
}
