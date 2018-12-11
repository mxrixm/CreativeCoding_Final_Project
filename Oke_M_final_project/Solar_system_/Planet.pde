class Planet {
  float radius;
  float distance;
  float speed;
  float theta;
  PImage texture;
  PShape globe;
  String name;
  float r;
  float g;
  float b;
  Planet(float distance, float radius, float speed, PImage texture, float r, float g, float b) {
    this.radius = radius;
    this.distance = distance;
    this.speed = speed;
    this.texture = texture;
    this.r = r;
    this.g = g;
    this.b = b;
noStroke();
    globe = createShape(SPHERE, radius); //sphere shpae called globe, sphere size changes based on radius
    globe.setTexture(texture); //
  }

  void display() {

    rotateY(theta);
    theta += .01 * speed; 
    pushMatrix();
    translate (distance, 0, 0); //distance from sun, sun in center

    rotateY(TWO_PI/2000); //rotate planet along y axis
    shape(globe); //the planet is drawn
    popMatrix();
  }
  void orbit(){
    pushMatrix();
    rotateX(PI/2); //rotate the ellipse so that it's on the x axis
    strokeWeight(2);
    stroke(r,g,b);
    noFill();
    ellipse(0,0,distance*2, distance*2); //multiply distances by 2 so the orbit path is drawn in the middle of the planet
    popMatrix();
}
}
