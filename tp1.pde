
  // Fondo
  background(#f6f2e5);

PImage miFoto;
// cargar la img
miFoto = loadImage("autorretrato1.jpeg");

//dimension de la ventana
size(800,400);

//color de fondo
background(255);

//mostrar img
image(miFoto, 0, 0, 400, 400);

  // Cabello largo
  fill(#bc4921); // naranja
  noStroke();
  ellipse(600, 200, 220, 350); // fondo del pelo largo

  // Cabeza
  fill(#f5c29c);
  ellipse(600, 120, 120, 130);

  // Flequillo
  fill(#bc4921);
  arc(600, 100, 130, 90, PI, TWO_PI); // flequillo redondeado

  // Lentes blancos
  stroke(0);
  strokeWeight(2);
  fill(255);
  ellipse(570, 120, 30, 30);
  ellipse(630, 120, 30, 30);
  line(585, 120, 615, 120);

  // Pupilas
  fill(#4B362E);
  noStroke();
  ellipse(570, 120, 10, 15);
  ellipse(630, 120, 10, 15);

  // Boca
  noFill();
  stroke(0);
  strokeWeight(3);
  arc(600, 150, 40, 20, 0, PI);

  // Cuerpo (remera azul)
  noStroke();
  fill(#19284C);
  rect(550, 185, 100, 140, 20);
