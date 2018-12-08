PImage sun;
PImage earth; 
PImage venus;
PImage mars;
PImage mercury;
PImage uranus;
PImage saturn;
PImage jupiter;
PImage neptune;

import peasy.*;
PeasyCam cam;
ArrayList system = new ArrayList(); //list of planets in solar system

void setup(){
  size (1000,700,P3D);
  cam = new PeasyCam (this,900);
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
 
  
  system.add(new Planet(0, 80, 0,sun));  // Sun
  system.add(new Planet(700, 6, 0.182, neptune));  // Neptune
  system.add(new Planet(550, 7, 0.228, uranus));  // Uranus
  system.add(new Planet(380, 12, 0.323, saturn));  // Saturn
  system.add(new Planet(280, 13, 0.434, jupiter));  // Jupiter
  system.add(new Planet(180, 1.5, 0.802, mars));  // Mars
  system.add(new Planet(150, 3, 1, earth));  // Earth
  system.add(new Planet(120, 3, 1.174, venus));  // Venus
  system.add(new Planet(100, 1, 1.607, mercury));  // Mercury 
}


void draw(){
  background (0);
  
  
  for (int i = 0; i<9; i++){ //as long as i < 9 dow what's below
    Planet p = (Planet) system.get(i); 
    p.display(); //draw planet
  }
}
  
