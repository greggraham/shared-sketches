class S01 extends Scene {
  PFont f;
  PImage java;
  float hue = 0.5;
  float theta = 0.0;
  float delta = 0.05;
  
  void setup() {
    f = loadFont("Georgia-48.vlw");
    java = loadImage("java-logo-png.png");
  }
  
  void start() {
    textFont(f);
    textAlign(CENTER, CENTER);
    colorMode(HSB, 1.0);
  }

  void draw() {
    background(hue, 0.3, 0.0);
    fill(hue, 0.3, 0.5, 0.5);
    rect(100, 100, width - 250, height - 250);
    rect(150, 150, width - 250, height - 250);
    fill(hue, 0.3, 1.0);
    String msg = "Objective:\nLearn graphics techniques and\nthe Java language"; 
    text(msg, width/2, height/2);
    image(java, width * 0.65, height * 0.4);
    for (int i = 0; i < 10; i++) {
      fill(i * 0.1, 1.0, 1.0, 0.3);
      ellipse(200 + i * 40, 300 + 100 * sin(theta + i * 0.2), 70, 70);
    }
    theta += delta;
  }  
}

