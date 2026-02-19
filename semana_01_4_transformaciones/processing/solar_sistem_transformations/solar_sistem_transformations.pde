
void setup(){
  size(800,800);
}

void draw(){
  background(0);
  
  
  //SUN
  pushMatrix();
  translate((width/2), (height/2));
  rotate(radians(frameCount));
  scale(sin(radians(frameCount)));
  fill(255,255,0);
  rect(-40,-40,100,100);
  popMatrix();
  
  //MERCURY  
  pushMatrix();
  translate((width/2), (height/2));
  rotate(radians(frameCount));
  fill(171, 100, 53);
  ellipse(100,100,50,50);
  popMatrix();
  
  
  
}
