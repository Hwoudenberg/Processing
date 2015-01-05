PImage img;

PGraphics mask;
int WHITE = color(255);
int BLACK = color(0);

void setup() {
  size(640, 140);
  img = loadImage(
  mask = createGraphics(width, height);
  mask.beginDraw();
  mask.background(0);
  mask.ellipse(width/2, height/2, 100, 100);                                                                            
  mask.endDraw();
}
void draw() {
  image(img, 0, 0);
  background(255, 255, 100);
  noStroke();
  fill(255, 0, 0);
  float diameter = height * 1;
  ellipse(mouseX, mouseY, diameter, diameter);
  maskPixels();
}


void maskPixels() {
  loadPixels();
  for (int i = 0; i < mask.pixels.length; ++i) {
    int  maskPixel = mask.pixels[i];
    if (maskPixel != WHITE) {
      pixels[i]= BLACK;
    }
  }
  updatePixels();
}

