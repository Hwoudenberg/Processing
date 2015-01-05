int blockSidePixels = 40;
int WHITE = color(255);
int BLACK = color(0);
void setup() {
  size(400, 400);
  background(255);

  strokeWeight(width*.1);
  ellipse(width/2, height/2, .8*width, .8*height);
  alias();
}
void alias() {
  for (int yStartblock = 0; yStartblock < height; yStartblock += blockSidePixels) {
    for (int xStartblock = 0; xStartblock < width; xStartblock += blockSidePixels) {
      float whiteFraction = fractionOfWhite(xStartblock, yStartblock);
      if (whiteFraction > .5) {
        setBlockColor(xStartblock, yStartblock, WHITE);
      }
      else {        
        setBlockColor(xStartblock, yStartblock, BLACK);
      };
    }
  }
}

