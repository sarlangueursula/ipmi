/*
Seanna Ursula Sarlangue 
https://youtu.be/QyJ_G5_XAfI
*/

PImage art;
boolean coloresRandom = false;

int filas = 6;
int columnas = 6;
float cuadrado = 65;
float pasoX = cuadrado + 1;
float pasoY = cuadrado + 1;

int filaMovil = -1;
int columnaMovil = -1;
float desplazamientoX = 0;
float desplazamientoY = 0;

void setup() {
  size(800, 400);
  art = loadImage("opart.png");
  art.resize(width / 2, height);
}

void draw() {
  background(255);
  image(art, 0, 0);

  for (int j = 0; j < filas; j++) {
    for (int i = 0; i < columnas; i++) {
      float x0 = 400 + i * pasoX;
      float y0 = j * pasoY;

      if (j == filaMovil && i == columnaMovil && mousePressed) {
        x0 = mouseX - desplazamientoX;
        y0 = mouseY - desplazamientoY;
      }

      mostrarCuadrados(x0, y0, coloresRandom);
    }
  }
}

void mostrarCuadrados(float x, float y, boolean colores) {
  float tamañoBase = 68;
  int cantidad = 5;    
  float paso = 9;     

  for (int i = 0; i < cantidad; i++) {
    float t = tamañoBase - i * paso;

    if (colores) {
      float intensidad = calcularDistancia(x, y, width / 2, height / 2);
      float r = map(intensidad, 0, 255, 100, 255);
      float g = map(y, 0, height, 100, 200);
      float b = map(x, 400, width, 200, 100);
      fill(r, g, b);
    } else {
      fill(255);
    }

    stroke(0);
    strokeWeight(2.5);
    rect(x, y, t, t);
  }
}

float calcularDistancia(float x1, float y1, float x2, float y2) {
  float distancia = dist(x1, y1, x2, y2);
  return map(distancia, 0, width, 0, 255);
}

void keyPressed() {
  if (key == 'c' || key == 'C') {
    coloresRandom = true;
  }
  if (key == 'r' || key == 'R') {
    coloresRandom = false;
  }
}

void mousePressed() {
  float tamañoBase = 68;

  for (int j = 0; j < filas; j++) {
    for (int i = 0; i < columnas; i++) {
      float x0 = 400 + i * pasoX;
      float y0 = j * pasoY;

      if (mouseX > x0 && mouseX < x0 + tamañoBase &&
          mouseY > y0 && mouseY < y0 + tamañoBase) {
        filaMovil = j;
        columnaMovil = i;
        desplazamientoX = mouseX - x0;
        desplazamientoY = mouseY - y0;
        return;
      }
    }
  }
}

void mouseReleased() {
  filaMovil = -1;
  columnaMovil = -1;
}
