class Star{
  float x; //xpos
  float y; //ypos
  float z; //zpos
  float pz; //previous z val
 // float speed;
  
  Star(){
    x = random (-width/2, width/2);
    y = random (-height/2, height/2);
    z = random(width/2);
    pz = z;
  }
  void update(){
    z = z-speed;
    if (z<1){ //if z = 1 the star reached passed the canvas so it should be less than 1
      z = width/2;
      x = random (-width/2, width/2);
      y = random (-height/2, height/2);
    }
}
void display(){
  fill (random(255,100));
  noStroke();
  
  float sx = map(x/z, 0, 1, 0, width/2); //new coordinates of x and y to move faster at each frame
  float sy = map (y/z, 0 ,1, 0, height/2);
  float r = map(z,0,width/2, 16, 0); //increaase star size 
  ellipse(sx, sy, r, r);
  
  pz=z;
  
} 
}
//https://www.youtube.com/watch?v=17WoOqgXsRM
