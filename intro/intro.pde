Scene[] scenes = {
    new IdleScene(),
    new TitleScene(),
    new S01(),
    new S02(),
  };

int sceneNum = 0;

void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < scenes.length; i++) {
    scenes[i].setup();
  }
  scenes[sceneNum].start();
}

void draw() {
  scenes[sceneNum].draw();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      sceneNum++;
      if (sceneNum >= scenes.length) {
        sceneNum = 0;
      }
      scenes[sceneNum].start();
    } else if (keyCode == LEFT) {
      sceneNum--;
      if (sceneNum < 0) {
        sceneNum = scenes.length - 1;
      }
      scenes[sceneNum].start();
    } else {
      scenes[sceneNum].keyPressedCoded();
    }
  } else {
    scenes[sceneNum].keyPressedKey();
  }
}
