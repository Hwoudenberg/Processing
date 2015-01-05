PGraphics pg;
float circleDiameter = 50;
void setup() {
  size(600, 600);
  pg  = createGraphics(40,40);
}
 
void draw() {
  background(255, 120, 0);
  fill(255);
  ellipse(mouseX, mouseY, circleDiameter, circleDiameter);
  fill(0, 0, 255);
  ellipse(width/2, height/2, circleDiameter*8, circleDiameter/2);
}  sss

