float theta=0; //angle of rotation around planets

color sun = color (255,255,0);
color mercury= color (93,9,9);
color mars = color (255,0,0);
color earth = color (38,152,43);
color venus = color (197,214,76);
color uranus = color (60,247,236);
color neptune = color (40,26,255); 
color jupiter = color (255,226,186);
color saturn = color (183,255,116);
//for the next version there will be images of the planets

void setup(){
  size(1300,900);
  
}


void draw (){
  background(0);
  noStroke();
  
  translate(width/2,height/2); //translating to center of window
  fill(sun);
  ellipse(0,0,120,120);
  
  theta += .01; 
  
  pushMatrix();
  rotate(theta*2.7); // mercury has higheest orbit speed
  translate (85,0);
  fill(mercury);
  ellipse(0,0,20,20);
  popMatrix();
  
  pushMatrix();
  rotate(theta*2); //2nd highest orbit speed
  translate (128,0);
  fill(venus);
  ellipse(0,0,45,45);
  popMatrix();
  
  pushMatrix();
  rotate(theta*1.5);
  translate (183,0);
  fill(earth);
  ellipse(0,0,45,45);
  popMatrix();
  
  pushMatrix();
  rotate(theta);
  translate (226,0);
  fill(mars);
  ellipse(0,0,30,30);
  popMatrix();
  
  pushMatrix();
  rotate(theta);
  translate (280,0);
  fill(jupiter);
  ellipse(0,0,70,70);
  popMatrix();
  
  pushMatrix();
  rotate(theta);
  translate (343,0);
  fill(saturn);
  ellipse(0,0,50,50);
  popMatrix();
  
  pushMatrix();
  rotate(theta);
  translate (400,0);
  fill(uranus);
  ellipse(0,0,47,47);
  popMatrix();
  
  pushMatrix();
  rotate(theta);
  translate (395,0);
  fill(uranus);
  ellipse(0,0,47,47);
  popMatrix();
  
   pushMatrix();
  rotate(theta);
  translate (450,0);
  fill(neptune);
  ellipse(0,0,47,47);
  popMatrix();
}
