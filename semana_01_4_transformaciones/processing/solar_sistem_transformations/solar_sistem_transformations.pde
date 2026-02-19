
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
  translate(80,0);
  fill(171, 100, 53);
  ellipse(0,0,50/3,50/3);
  popMatrix();
  
  //VENUS
  pushMatrix();
  translate((width/2), (height/2));
  rotate(radians(frameCount)*0.39);
  translate(150,0);
  fill(237, 96, 7);
  ellipse(0,0,50,50);
  popMatrix();
  
  
  //EARTH
  pushMatrix();
  translate((width/2), (height/2));
  rotate(radians(frameCount)*0.24);
  
  translate(250,0);
  fill(30, 176, 227);
  ellipse(0,0,50,50);
  //Moon
  pushMatrix();
  rotate(radians(frameCount)*0.24);
  translate(60, 0);
  
  fill(255);
  ellipse(0,0,50/10,50/10);
  popMatrix();
  popMatrix();
  
  
  
  //MARS
  pushMatrix();
  translate((width/2), (height/2));
  rotate(radians(frameCount)*0.13);
  translate(350,0);
  fill(199, 33, 26);
  ellipse(0,0,50/2,50/2);
  popMatrix();
  
}
