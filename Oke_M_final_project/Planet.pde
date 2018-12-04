class Planet{
  float radius; // size of planet
  float distance; //distance from sun 
  PImage texture;
  PShape globe;
  float speed;
  
  Planet (float r, float d, PImage t){
    radius = r;
    distance = d; 
    texture = t; 
    
    
    noStroke();
    noFill();
    globe = createShape(SPHERE, radius); //sphere is made based on radius of planet
    globe.setTexture(t); //texture of sphere should be image of planet
  }
  
  void display (){
    noStroke();
    translate(distance,0);
    shape(globe);
  
}
  void planetinfo(){ //https://nssdc.gsfc.nasa.gov/planetary/factsheet/
    
  }
}
