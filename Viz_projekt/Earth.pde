class Earth {
  float rotationSpeed = 0.001, earthRotate;
 
  //multiply radius of earth by 0.031 to get r
  float r = 198;
  PImage earth;
  PShape globe;

  Earth() {
  }

  void create() {
    globe = createShape(SPHERE, r);
    earth = loadImage("earth.jpg");
    globe.setTexture(earth);
  }

  void update() {
    translate(width/2, height/2);
    rotateY(earthRotate);
    shape(globe);
    earthRotate += rotationSpeed;
    fill(200);
    noStroke(); 
  }
}
