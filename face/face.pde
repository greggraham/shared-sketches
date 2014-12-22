size(600, 400);
background(120);
noStroke();

// hair
fill(10);
ellipse(300, 150, 200, 200);

// head
fill(200);
arc(300, 160, 200, 320, 0, PI);

// ears
ellipse(200, 200, 50, 50);
ellipse(400, 200, 50, 50);

// sideburns
fill(10);
rect(200, 150, 20, 60);
rect(380, 150, 20, 60);

// eyebrows
stroke(10);
fill(200);
strokeWeight(4);
arc(265, 205, 45, 45, 4.08, 5.5);
arc(335, 205, 45, 45, 4.08, 5.5);

// eyes
noStroke();
fill(10);
ellipse(270, 200, 20, 20);
ellipse(340, 200, 20, 20);

// mouth
stroke(10);
fill(200);
strokeWeight(4);
arc(300, 200, 150, 150, 1.1, 2.04);

// nose
beginShape();
vertex(300, 210);
vertex(310, 240);
vertex(300, 240);
endShape();

