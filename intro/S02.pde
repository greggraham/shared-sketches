class S02 extends Scene {
  PImage book;
  PImage amazon;
  PImage oreilley;
  PFont f;
  
  void setup() {
    book = loadImage("book.jpg");  // 500x773 pixels
    amazon = loadImage("amazon.png"); // 320x320 pixels
    oreilley = loadImage("oreilley.png"); // 379x90 pixels
    f = loadFont("Georgia-48.vlw");
  }
  
  void start() {
    textFont(f);
    colorMode(RGB, 255);
    textAlign(CENTER, CENTER);
  }
  
  void draw() {
    background(1, 57, 77);
    image(book, 50, (height - 773) / 2);
    image(amazon, width - 400, (height - (320 + 50 + 90)) / 2);
    image(oreilley, width - 430, (height - (320 + 50 + 90)) / 2 + 320 + 50);
    fill(#F0DF49);
    String msg = "Required textbook\navailable from\nO'Reilley and Amazon"; 
    text(msg, width * 0.53, height * 0.5);
  }
}
