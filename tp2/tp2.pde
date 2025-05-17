
PImage imagen1, imagen2, imagen3;
String texto1 = "La Superautopista Electrónica, obra de Nam June Paik\nes una instalación monumental que utiliza una gran\ncantidad de televisores, reproductores VHS y cables para crear\nuna representación visual de los Estados Unidos.";
String texto2 = "La obra causa un impacto abrumador en los visitantes\ndesde su primera visita. La oleada de medios\naudiovisuales, junto con las luces de neón parpadeantes, la\nhacen impresionante. Resulta difícil\nconcentrarse en cualquier estado que bordee\nlas luces de neón o en los diálogos de video\nque se reproducen para cada estado.";
String texto3 = "A través de esta enorme tecnoescultura, Paik\nno solo articuló su visión de un país diverso\ny multicultural como Estados Unidos, sino también de\nnuestro futuro. Cada estado está representado mediante\nun videoclip que transmite su visión del mismo. Paik\nmuestra cómo el cine y la televisión han moldeado nuestra\nconcepción de los diferentes estados.";
String textoBoton = "Reiniciar";

float x = 0;
float y = 0;
int fade = 0;  
int pantalla = 1;

int botonX = 270;
int botonY = 220;
int botonW = 100;
int botonH = 40;

void setup() {
  size(640, 480);
  imagen1 = loadImage("obra1.jpg");
  imagen2 = loadImage("obra2.jpg");
  imagen3 = loadImage("obra3.png");

  textSize(24);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(200);

  if (pantalla == 1) {
    image(imagen1, 0, 0, width, height);
    fill(255);
    text(texto1, x, height / 2);
    x += 2;
  }

  else if (pantalla == 2) {
    image(imagen2, 0, 0, width, height);
    fill(255);
    text(texto2, width / 2, y);
    y += 2;
  }

  else if (pantalla == 3) {
    image(imagen3, 0, 0, width, height);
    fill(255, fade);  
    text(texto3, width / 2, height / 2);
    if (fade < 255) {
      fade += 2; 
    }
  }

  else if (pantalla == 4) {
    background(0);
    fill(180);
    rect(botonX, botonY, botonW, botonH, 10);
    fill(0);
    text(textoBoton, botonX + botonW / 2, botonY + botonH / 2);
  }
  
  if (frameCount == 300) {
    pantalla = 2;
  } else if (frameCount == 600) {
    pantalla = 3;
  } else if (frameCount == 900) {
    pantalla = 4;
  }
}

void mousePressed() {
  if (pantalla == 4) {
    if (mouseX > botonX && mouseX < botonX + botonW &&
        mouseY > botonY && mouseY < botonY + botonH) {
      pantalla = 1;
      x = 0;
      y = 0;
      fade = 0;
      frameCount = 0;
    }
  }
}
