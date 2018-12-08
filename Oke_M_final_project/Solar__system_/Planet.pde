class Planet {
  float radius;
  float distance;
  float speed;
  float theta;
  PImage texture;
  PShape globe;

  Planet(float distance, float radius, float speed, PImage texture) {
    this.radius = radius;
    this.distance = distance;
    this.speed = speed;
    this.texture = texture;
noStroke();
    globe = createShape(SPHERE, radius); //sphere shpae called globe, sphere size changes based on radius
    globe.setTexture(texture); //
  }

  void display() {

    rotateY(theta);
    theta += .01 * speed; 
    pushMatrix();
    translate (distance, 0, 0); //distance from sun, sun will not translate

    rotateY((millis() * TWO_PI/3000) % TWO_PI); //rotate planet along y axis
    shape(globe); //the planet is drawn
    popMatrix();
  }
}
