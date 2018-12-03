import peasy.*; //cam library http://mrfeinberg.com/peasycam/, https://www.youtube.com/watch?v=dncudkelNxw
// can zoom in/zoom out and control camera angles with peasy

PeasyCam cam; //object called cam

float theta; 

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

void setup(){
  cam = new PeasyCam (this,800); //control this 3D sketch, look at the sketch from 100 units away
  
  sun_ = loadImage ("images/sunmap.jpg");
  earth_ = loadImage ("images/earthmap1k.jpg");
  venus_ = loadImage ("images/venusmap.jpg");
  mars_ = loadImage("images/mars_1k_color.jpg");
  mercury_= loadImage("images/mercurymap.jpg");
  uranus_ = loadImage("images/uranusmap.jpg");
  saturn_ = loadImage("images/saturnmap.jpg");
  jupiter_ = loadImage("images/jupitermap.jpg");
  neptune_ = loadImage("images/neptunemap.jpg");
  
  size(1300,900,P3D);
  
  sun = new Planet(80,0, sun_);
  mercury = new Planet (20, 85,  mercury_);
  venus = new Planet (45, 128, venus_);
  earth = new Planet(45,183, earth_);
  mars = new Planet (30, 226,mars_);
  jupiter = new Planet (60, 280, jupiter_);
  saturn = new Planet (50,343, saturn_);
  uranus = new Planet (47,400, uranus_);
  neptune = new Planet (47,450, neptune_);
  
}


void draw (){
 
  theta += .01;
  background(0);
  noStroke();
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
  
  
  /* 

  pushMatrix();
  rotate(theta*0.3);
  translate (400,0);
 // fill(uranus); //7th highest orbit speed
  ellipse(0,0,47,47);
  popMatrix();
   
   pushMatrix();
  rotate(theta*.1);
  translate (450,0);
 // fill(neptune); //slowest
  ellipse(0,0,47,47);
  popMatrix(); */
}
