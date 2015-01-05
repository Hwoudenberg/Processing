ArrayList<Robot> robots;
float numberOfRobots = 15;


void setup() {
  float scale = 2;
  size(800, 800);
  robots = new ArrayList<Robot>();
 
  for (int i = 0; i < numberOfRobots; ++i) {
    robots.add(new Robot(color(0, 210, 8), scale, 0.01, 120));
    scale *= .5;
  }
}


void draw() {
  background(255);

  robots.get(0).draw();
  robots.get(0).moveTo(mouseX, mouseY);


  for (int i = 1; i < numberOfRobots; ++i) {

    Robot previousRobot = robots.get(i-1);
    Robot currentRobot = robots.get(i);
    currentRobot.easeTowards(previousRobot.x, previousRobot.y, 0.05);
    currentRobot.draw();
  }



  //draw a grid to elp me draw my robot
  //  translate(width/2, height/2);
  //  pushMatrix();
  //  drawGrid(-width/2, -height/2, 20, 100, 12);
  //  drawMouseCoordinates(-width/2, -height/2, 9);
  //  popMatrix();
}
