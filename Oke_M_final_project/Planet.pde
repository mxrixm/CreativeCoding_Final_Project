class Planet{
  float radius; // size of planet
  float distance; //distance from sun 
  PImage texture;
  PShape globe;
  
  Planet (float r, float d, PImage t){
    radius = r;
    distance = d; 
    texture = t; 
    
    
    noStroke();
    noFill();
    globe = createShape(SPHERE,radius);
    globe.setTexture(t);
  }
  
  void display (){
    noStroke();
  
    translate(distance,0);
    shape(globe);
   // sphere(radius);
     //ellipse (0,0,radius, radius);
  
}
}
