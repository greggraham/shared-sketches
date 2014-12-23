class TitleScene extends Scene {
  PFont f;
  
  void setup() {
    f = loadFont("Georgia-48.vlw");
  }
  
  void start() {
    textFont(f);
    textAlign(CENTER, CENTER);
    background(0);
  }

  void draw() {
    String msg = "Welcome to Graphics Programming!"; 
    text(msg, width/2, height/2);
  }  
}
