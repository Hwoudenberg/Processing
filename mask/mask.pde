PGraphics pg;
float circleDiameter = 400;

void setup() {
  size(600, 600);
  pg  = createGraphics(40, 40);
}

void draw() {
  background(0);

  fill(235);
  ellipse(120+width/2, 60+height/2, circleDiameter/10, circleDiameter/10);
  fill(0, 200, 0);
  ellipse(mouseX, mouseY, 30, 30);
  fill(235);
  ellipse(mouseX, mouseY, 80, 20);
  ellipse(mouseX-15, mouseY, 10, 10);
  ellipse(mouseX-30, mouseY, 10, 10);
  ellipse(mouseX, mouseY, 10, 10);
  ellipse(mouseX+15, mouseY, 10, 10);
  ellipse(mouseX+30, mouseY, 10, 10);
  translate(width/2, height/2);
  fill(0, 0, 255);

  ellipse(0, 0, circleDiameter/2, circleDiameter/2);

  fill(255, 165, 0);
  ellipse(280, -280, circleDiameter/2, circleDiameter/2);
}  

