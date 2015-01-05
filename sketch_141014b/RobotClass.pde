




class Robot {
  float y = 0; //location of robot
  float x = 0; //location of robot
  float scale = 1;
  float easing = 0.05;
  int robotColor;
 float headSpeed;
  float neckScale;
  Robot(int robotColor_, float scale_, float headSpeed_, float neckScale_) {
    robotColor = robotColor_;
    neckScale = neckScale_;
    scale = scale_;
    headSpeed = headSpeed_;
    
    
  }


  void moveTo(float x_, float y_) {
    x = x_;
    y = y_;
  }


  void draw() {
    pushMatrix();
    //draw a grid to help me draw my robot
    translate(x, y);
    fill(robotColor);

    //draw body of robot
    float bodyWidth = 120 * scale;
    float bodyHeight = 150 * scale;
    float yTopOfBody = -bodyHeight/2;
    rect(-bodyWidth/2, yTopOfBody, bodyWidth, bodyHeight);

    //draw neck of robot
    float neckWidth = 30 * scale;
    float neckHeight = neckScale * (1+cos(millis() * headSpeed));
    float yTopOfNeck = yTopOfBody - neckHeight;
    rect(-neckWidth/2, yTopOfNeck, neckWidth, neckHeight);
    //draw head
    float headWidth = 140 * scale;
    float headHeight = 30 * scale;
    rect(-headWidth/2, yTopOfNeck-headHeight, headWidth, headHeight);


    //draw eyes of robot

      float eyeWidth = 10 * scale;
    float eyeHeight = 10 * scale;
    ellipse(-eyeWidth, yTopOfNeck-headHeight/2, eyeWidth, eyeHeight);
    ellipse(eyeWidth, yTopOfNeck-headHeight/2, eyeWidth, eyeHeight);
    popMatrix();
  }


  void easeTowards(float targetX, float targetY, float easing) {

    float dx = targetX - x;
    if (abs(dx) > 1) {
      x += dx * easing;
    }
    float dy = targetY - y;
    if (abs(dy) >1 ) {
      y += dy * easing;
    }
  }
}
