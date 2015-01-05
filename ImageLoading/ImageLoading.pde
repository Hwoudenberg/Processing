PImage img;
int steves;
int women;

void setup() {
  size(748, 600);
}
void draw() {
  img = loadImage("nop.jpg");
  image(img, 0, 0);
  loadPixels();
  int i = 0;

  for (int pxl : pixels) {
    int r = (int)red(pxl);
    int g = (int)green(pxl);
    int b = (int)blue(pxl);
    if (b >= 1 ) { 
      pixels[i]=color(steves, g, women );
    } 
    ++i;
  }
  updatePixels();
}
void mouseClicked() {
  for (int pxl : pixels) {
    int r = (int)red(pxl);
    int g = (int)green(pxl);
    int b = (int)blue(pxl);}
