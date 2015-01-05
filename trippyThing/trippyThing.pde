
Planet myplanet;
void setup() {
  size(600, 800);
  myplanet = new Planet();
}
void draw() {
  background(0); 
  translate(width/2, height/2);
  myplanet.draw();
}
class Planet {
  float diameter=1;
  float arcAngle=PI/18;
  PImage world;
  Planet () {
    world = loadImage("dud.png");
  }

  void draw() {
    if (diameter < width) {
      diameter *= 1.05;
    } 
    else diameter = width;

    noStroke();
    fill(255);
    text(""+arcAngle, -width/2+20, -height/2 + 20);
    //    ellipse(0, 0, diameter, diameter);
    image(world, -diameter/2, -diameter/2, diameter, diameter);

    arcAngle=PI/4*(1+sin(frameCount*.02));
    float y = diameter/2/tan(arcAngle);
    float arcDiameter=2*y/cos(arcAngle);
    fill(255, 0, 0);
    if (diameter >= width) {
      fill(255, 0, 0);
      arc(0, -y, arcDiameter, arcDiameter, PI/2-arcAngle, PI/2+arcAngle, OPEN);
      arc(0, y, arcDiameter, arcDiameter, -PI/2-arcAngle, -PI/2+arcAngle, OPEN);
    }
    
  }
}

