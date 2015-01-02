// Frequency_Modulation_02.pde

import beads.*; // import the beads library
AudioContext ac; // create our AudioContext

WavePlayer wp;
Envelope env;
Gain g;

void setup()
{
  size(400, 300);
  ac = new AudioContext();
  
  wp = new WavePlayer(ac, 400, Buffer.SQUARE);
  env = new Envelope(ac);
  g = new Gain(ac, 1, env);
  
  // connect the carrier to the Gain input
  g.addInput(wp);
  
  // connect the Gain output to the AudioContext
  ac.out.addInput(g);
  
  // start audio processing
  ac.start();
}

void keyPressed() {
  println(key);
  switch (key) {
    case 'q':
      wp.setFrequency(200);
      break;
    case 'w':
      wp.setFrequency(300);
      break;
    case 'e':
      wp.setFrequency(400);
      break;
    default:
      wp.setFrequency(500);
  }
  env.addSegment(0.5, 20);
  env.addSegment(0.4, 800);
  env.addSegment(0.0, 50);
}

void draw() {
}

