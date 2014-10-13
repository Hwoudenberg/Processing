void setup() {
  size(640, 800);
}
void draw() {
  translate(mouseX-317, mouseY-555);
  strokeWeight(3);
  background(255);
  rectMode(CENTER);
  fill(255);
  strokeWeight(4);
  rect(width/2, height/2, 180, 120);
  line(381, 591, 393, 692);
  println(mouseX, mouseY);
  line(267, 590, 222, 694);
  line(247, 510, 155, 492);
  line(380, 510, 482, 484);
  ellipse(317, 555, 170, 190);
  fill(3);
  ellipse(257, 428, 16, 16);
  ellipse(375, 428, 16, 16);
  line(319, 342, 318, 306);
  
} 

