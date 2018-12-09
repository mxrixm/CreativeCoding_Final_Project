PImage sun;
PImage earth; 
PImage venus;
PImage mars;
PImage mercury;
PImage uranus;
PImage saturn;
PImage jupiter;
PImage neptune;
float distance;
char keyAnswer;

import peasy.*; //cam library http://mrfeinberg.com/peasycam/, https://www.youtube.com/watch?v=dncudkelNxw
// can zoom in/zoom out and control camera angles with peasy

PeasyCam cam;
ArrayList system = new ArrayList(); //list of planets in solar system

void setup() {
  size (1000, 1000, P3D);
  cam = new PeasyCam (this, 700); //start by looking at sketch from 900 units away
  //loading images of planets 
  sun = loadImage ("images/sunmap.jpg"); 
  earth = loadImage ("images/earthmap1k.jpg");
  venus = loadImage ("images/venusmap.jpg");
  mars = loadImage("images/mars_1k_color.jpg");
  mercury= loadImage("images/mercurymap.jpg");
  uranus = loadImage("images/uranusmap.jpg");
  saturn = loadImage("images/saturnmap.jpg");
  jupiter = loadImage("images/jupitermap.jpg");
  neptune = loadImage("images/neptunemap.jpg");

  noStroke();
  sphereDetail(40); //smoothness of sphere


  system.add(new Planet(0, 115, 0, sun));  // Sun
  system.add(new Planet(780, 39, 0.15, neptune));  // Neptune
  system.add(new Planet(690, 39, 0.2, uranus));  // Uranus
  system.add(new Planet(575, 42, 0.3, saturn));  // Saturn
  system.add(new Planet(435, 50, 0.4, jupiter));  // Jupiter
  system.add(new Planet(340, 25, 0.8, mars));  // Mars
  system.add(new Planet(270, 30, 0.9, earth));  // Earth
  system.add(new Planet(197, 30, 1.2, venus));  // Venus
  system.add(new Planet(140, 15, 1.8, mercury));  // Mercury
}


void draw() {
  background (0);


  for (int i = 0; i<9; i++) { //as long as i < 9 do what's below
    Planet p = (Planet) system.get(i); 
    p.display(); //draw planet
    p.orbit();

    keyAnswer=key;

    switch(keyAnswer) {
    case 's':
      pushMatrix();
      ellipse(500, 500, 400, 400);
      popMatrix();
      break;
    
    default:
      break;
      
    }
  }
}
