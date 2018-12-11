import peasy.*; //cam library http://mrfeinberg.com/peasycam/, https://www.youtube.com/watch?v=dncudkelNxw
// can zoom in/zoom out and control camera angles with peasy

Star[] stars = new Star[400]; //array of stars with 400 stars
ArrayList system = new ArrayList(); //list of planets in solar system

//variables
PImage sun;
PImage earth; 
PImage venus;
PImage mars;
PImage mercury;
PImage uranus;
PImage saturn;
PImage jupiter;
PImage neptune;
PImage star;
float distance;
char keyAnswer;
float dir = 115*4; //for lighting, sun radius * 4
float angle = PI;
float con = 0;
float theta;
float speed;
//planet facts from https://solarsystem.nasa.gov/planets/overview/
String suni = "    SUN - Star Type: yellow dwarf. Age: 4.5 bllion years. Center of solar system; made up of hydrogen and helium that's held together by its own gravity.";
String mercuryi = "    MERCURY - Planet Type: terrestrial. Length of year: 88 days. Distance from sun: 36 million miles. Moons: 0";
String venusi = "    VENUS - Planet Type: terrestrial. Length of year: 225 days. Distance from sun: 67 million miles. Moons: 0";
String earthi = "    EARTH - Planet Type: terrestrial. Length of year: 365 days. Distance from sun: 93 million miles. Moons: 1";
String marsi = "    MARS - Planet Type: terrestrial. Length of year: 687 days. Distance from sun: 142 million miles. Moons: 2 ";
String juptieri = "    JUPITER - Planet Type: gas. Length of year: 4,333 days. Distance from sun: 484 million miles. Moons: 75";
String staurni = "    SATURN - Planet Type: gas. Length of year: 10,759 days. Distance from sun: 886 million miles. Moons: 53";
String uranusi = "    URANUS - Planet Type: ice. Length of year: 30,687 days. Distance from sun: 1.8 billion miles. Moons: 27";
String neptunei = "    NEPTUNE - Planet Type: ice. Length of year: 60,190 days. Distance from sun: 2.8 billion miles. Moons: 13";
String title = "SOLAR";
String line1 = "Press any key to start simulation.";
String line2 = "Use keys 0-9 to load info about the planets & sun.";
String line3 = "Drag the mouse to explore different angles.";
int stage = 1;
PFont font;
PFont font2;
PeasyCam cam;

void setup() {
  size (900, 600, P3D); 
  cam = new PeasyCam (this, 1100); //start by looking at sketch from 1500 units away

  //load fonts used
  font2 = createFont("data/Mont-HeavyDEMO.otf", 150);
  font = createFont("data/spaceranger.ttf", 400);
  
  //loading images of planets 
  sun = loadImage ("data/sunmap.jpg"); 
  earth = loadImage ("data/earthmap1k.jpg");
  venus = loadImage ("data/venusmap.jpg");
  mars = loadImage("data/mars_1k_color.jpg");
  mercury= loadImage("data/mercurymap.jpg");
  uranus = loadImage("data/uranusmap.jpg");
  saturn = loadImage("data/saturnmap.jpg");
  jupiter = loadImage("data/jupitermap.jpg");
  neptune = loadImage("data/neptunemap.jpg");
  star =  loadImage("data/galaxy.png");

  stage = 1;

  noStroke();
  sphereDetail(40); //smoothness of spheres

  system.add(new Planet(0, 115, 0, sun, 255,0,0));  // Sun
  system.add(new Planet(780, 39, 0.15, neptune,13,11,214));  // Neptune
  system.add(new Planet(690, 39, 0.2, uranus,5,242,220));  // Uranus
  system.add(new Planet(575, 42, 0.3, saturn, 184,214,19));  // Saturn
  system.add(new Planet(435, 50, 0.4, jupiter,252,187,107));  // Jupiter
  system.add(new Planet(340, 25, 0.8, mars,250,21,0));  // Mars
  system.add(new Planet(270, 30, 0.9, earth,0,142,15 ));  // Earth
  system.add(new Planet(197, 30, 1.2, venus,247,141,10));  // Venus
  system.add(new Planet(140, 15, 1.8, mercury,95,51,10));  // Mercury
  
  for (int i = 0; i< stars.length; i++){
    stars[i] = new Star();
  }
}

void draw() {
  if (stage==1) {  //start page
    
    speed = map(mouseX,0,width,0,50);
    background(0);
    for (int i = 0; i< stars.length; i++){
      stars[i].update();
      stars[i].display();
    }
   // textAlign(CENTER);
    textFont(font);
    fill(10, 47, 245);
    text(title, -720, -240);

    fill(10, 239, 245);
    textFont(font2);
    textSize(60);
    text(line1, -700, -90);
    text(line2, -700, -20 );
    text(line3, -700, 50);
    
    if (keyPressed==true) {
      stage=2;
    }
  }
  if (stage==2) { //solar simulation starts
   background(star);

    spotLight(200, 200, 200, dir, 0, 0, -1, 0, 0, angle, con);
    spotLight(200, 200, 200, -dir, 0, 0, 1, 0, 0, angle, con);
    spotLight(200, 200, 200, 0, dir, 0, -1, 0, 0, angle, con);
    spotLight(200, 200, 200, 0, -dir, 0, 0, 1, 0, angle, con);
    spotLight(200, 200, 200, 0, 0, dir, 0, -1, 0, angle, con);
    spotLight(200, 200, 200, 0, 0, -dir, 0, 0, 1, angle, con);  //tested out different camera angles to put light on the planets

    for (int i = 0; i<9; i++) { //as long as i < 9 do what's below
      Planet p = (Planet) system.get(i); 
      p.display(); //draw planet
      p.orbit(); //draw orbit path

    }
  }
}

void keyPressed() {  //decided not to use switch statement because when a key was pressed the text kept repeating in the console rather than showing up once
  if (key == '0') { //when specific keys are pressed load info in the console
     print(suni);
  }
  if (key=='1'){
    print (mercuryi);
  }
  if (key=='2'){  
    print (venusi);
  }
  if (key=='3'){
    print (earthi);
  }
  if (key=='4'){
    print (marsi);
  }
  if (key=='5'){
    print (juptieri);
  }
  if (key=='6'){
    print (staurni);
  }
  if (key=='7'){
    print (uranusi);
  }
  if (key=='8'){
    print (neptunei);
  }
}
