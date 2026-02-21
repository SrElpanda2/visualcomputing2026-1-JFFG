
void setup(){
  size(800,800); // definir las dimensiones de la pantalla
}

void draw(){
  background(0);
  
  
  //SUN
  pushMatrix();
  translate((width/2), (height/2)); // trasladar el origen al centro de la pantalla
  rotate(radians(frameCount)); // rotar el elemento con respecto al orgien
  scale(sin(radians(frameCount))); // escalar sinusoidalmente
  fill(255,255,0); // color amarillo
  rect(-40,-40,100,100); // crear el elemento centrado en el origen
  popMatrix();
  
  //MERCURY  
  pushMatrix();
  translate((width/2), (height/2));// trasladar origen
  rotate(radians(frameCount));// rotar sobre el origen, venus es tomado como la unidad de referencia de los periodos orbitales
  translate(80,0);// trasladar el planeta a su orbita, distancia 80
  fill(171, 100, 53); // color anaranjado
  ellipse(0,0,50/3,50/3); // crear elemento con relacion de tamaño 1/3 de la tierra
  popMatrix();
  
  //VENUS
  pushMatrix();
  translate((width/2), (height/2));
  rotate(radians(frameCount)*0.39);//rotar con una velocidad reducida, simula los periodos orbitales reales
  translate(150,0); // trasladar a venus a su orbita
  fill(237, 96, 7); // color de venus
  ellipse(0,0,50,50);
  popMatrix();
  
  
  //EARTH
  pushMatrix();
  translate((width/2), (height/2));
  rotate(radians(frameCount)*0.24); // periodo orbital de la tierra
  
  translate(250,0); // trasladar a la tierra a su orbita
  fill(30, 176, 227); // color azulado para la tierra
  ellipse(0,0,50,50);
  //Moon
  pushMatrix(); // guardar las transformaciones de la tierra para heredarlas
  rotate(radians(frameCount)*0.24); //periodo orbital de la luna
  translate(60, 0);
  
  fill(255); // color balnco
  ellipse(0,0,50/10,50/10); // relacion de tamaño 1/10 de la tierra (no es la relacion real, pero mas pequeño no se ve)
  popMatrix();
  popMatrix();
  
  
  
  //MARS
  pushMatrix();
  translate((width/2), (height/2));
  rotate(radians(frameCount)*0.13);// periodo orbital de marte
  translate(350,0); // trasladar a marte a su orbita
  fill(199, 33, 26);
  ellipse(0,0,50/2,50/2);// ralcion de tamaño 1/2 de la tierra
  popMatrix();
  
}
