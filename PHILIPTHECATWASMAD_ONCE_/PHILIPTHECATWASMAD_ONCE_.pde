boolean mouseIsBeingDragged = false;


void setup () {
  size(320, 240); 

  background(255);
}
void draw() {
  if (mouseIsBeingDragged) {
    line(pmouseX, pmouseY, mouseX, mouseY);
    int i = 0;
    loadPixels();
    for (int pxl : pixels) {
      int r = (int)red(pxl);
      int g = (int)green(pxl);
      int b = (int)blue(pxl);
      if (b >= 1 ) { 
        pixels[i]=color(r, g, b);
      } 
      ++i;
    }
    updatePixels();
  }
}
void mouseDragged() {
  mouseIsBeingDragged = true;
}
void mouseMoved() {
  mouseIsBeingDragged = false;
}

