//start with title of work, when title is clicked it zooms in on solar system
//draw bakground using flares in illustrator

import peasy.*; //cam library http://mrfeinberg.com/peasycam/, https://www.youtube.com/watch?v=dncudkelNxw
// can zoom in/zoom out and control camera angles with peasy

PeasyCam cam; //object called cam
char keyAnswer;
float theta; 
PShape g;
float radius;
PImage texture;

PImage sun_;
PImage earth_; 
PImage venus_;
PImage mars_;
PImage mercury_;
PImage uranus_;
PImage saturn_;
PImage jupiter_;
PImage neptune_;

Planet sun;
Planet mercury;
Planet venus;
Planet earth;
Planet mars;
Planet jupiter;
Planet saturn;
Planet uranus;
Planet neptune;

void setup() {
  cam = new PeasyCam (this, 900); //control this 3D sketch, look at the sketch from 100 units away

  sun_ = loadImage ("images/sunmap.jpg");
  earth_ = loadImage ("images/earthmap1k.jpg");
  venus_ = loadImage ("images/venusmap.jpg");
  mars_ = loadImage("images/mars_1k_color.jpg");
  mercury_= loadImage("images/mercurymap.jpg");
  uranus_ = loadImage("images/uranusmap.jpg");
  saturn_ = loadImage("images/saturnmap.jpg");
  jupiter_ = loadImage("images/jupitermap.jpg");
  neptune_ = loadImage("images/neptunemap.jpg");

  size(1300, 900, P3D);

  sun = new Planet(80, 0, sun_);
  mercury = new Planet (20, 85, mercury_);
  venus = new Planet (45, 128, venus_);
  earth = new Planet(45, 183, earth_);
  mars = new Planet (30, 226, mars_);
  jupiter = new Planet (60, 280, jupiter_);
  saturn = new Planet (50, 343, saturn_);
  uranus = new Planet (47, 400, uranus_);
  neptune = new Planet (47, 450, neptune_);
  
  background(0);
}


void draw () {
  
  textSize (200);
  text("SOLAR",width/2,height/2);
  fill(255);
  
  float m = millis();
 if  (m ==5000){
  
  theta += .01;
  background(0);
  noStroke();
 
  // pointLight(255,  255,  255,  0,  0,  0);  
  // spotLight(255, 255, 255, 80, 20, 40, -1, 0, 0, PI/2, 2);
  lights();

  sun.display();

  pushMatrix();
  rotate(theta*2.7);
  mercury.display(); // mercury has higheest orbit speed
  popMatrix(); 

  pushMatrix();
  rotate(theta*2);
  venus.display();
  popMatrix();

  pushMatrix();
  rotate(theta*1.5);
  earth.display(); 
  popMatrix();

  pushMatrix();
  rotate(theta*1.2);
  mars.display();
  popMatrix();

  pushMatrix();
  rotate(theta*.8);
  jupiter.display();
  popMatrix();

  pushMatrix();
  rotate (theta*.5);
  saturn.display();
  popMatrix();

  pushMatrix();
  rotate(theta*.3);
  uranus.display();
  popMatrix();

  pushMatrix();
  rotate (theta*.1);
  neptune.display();
  popMatrix(); 
  
 
  
  //orbit(50, 100, 800, 800);
  keyAnswer = key;  
  switch(keyAnswer){
    case 's':
      textSize(30);
      fill(255);
      text("Saturn",800,200);
      println("s");
      break;
 
  }

}
}


void orbit(float x, float y, float w, float h) { //create orbit path for each planet
  stroke(255);
  strokeWeight(2);
  ellipse(x, y, w, h);
}

void planet (float radius, PImage texture){
  g = createShape(SPHERE,radius);
  g.setTexture(texture);
  
}

  
