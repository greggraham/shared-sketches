// Robot 4: Media from "Getting Started with Processing" 
// by Reas & Fry. O'Reilly / Make 2010


Robot bot1;
Robot bot2;
Robot bot3;
PImage landscape;

void setup() {
  size(720, 480);
  bot1 = new Robot(25, 555, 65, 1.0, 130, 400, "robot1.svg");
  bot2 = new Robot(15, 700, 140, 0.7, 78, 248, "robot2.svg");
  bot3 = new Robot(380, 440, 190, 0.5, 39, 124, "robot3.svg");
  landscape = loadImage("alpine.png");
  smooth();
}

void draw() {
  // Set the background to the "landscape" image, this image
  // must be the same width and height as the program
  background(landscape);

  bot3.display();
  bot2.display();
  bot1.display();
  bot3.move();
  bot2.move();
  bot1.move();
}

