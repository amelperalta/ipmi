// Amel Peralta Comision 1
// https://youtu.be/HENKE8N2xyQ

PImage imagen;
boolean cambiarColor = false;
String reinicio;
int tamañoCirculo = 9; 

void setup() {
  size(800, 400);
  rectMode(CENTER);
  imagen = loadImage("37.png");
  textSize(20);
  reinicio = "Reiniciar";
}

void draw() {
  background(0);
  // Imagen de referencia a la izquierda
  image(imagen, 0, 0, width / 2, height);

  // Dibujar la cuadrícula a la derecha
  push(); 
  translate(width / 2, 0);
  float cantidad = 3;
  float tamañoCelda = width / 6;
  dibujarCuadricula(cantidad, tamañoCelda);
  pop();

  // Dibuja el botón
  dibujarBoton();
}

// Función que dibuja la cuadrícula con celdas y figuras
void dibujarCuadricula(float cantidad, float tamaño) {
  for (int y = 0; y < cantidad; y++) {
    for (int x = 0; x < cantidad; x++) {
      float centroX = x * tamaño;
      float centroY = y * tamaño;

      push();
      translate(centroX + tamaño/2, centroY + tamaño/2);

      boolean condicion = (x + y) % 2 == 0;

      if (cambiarColor) {
        if (condicion) fill(100);         
        else fill(200, 0, 0);             
      } else {
        if (condicion) fill(30, 0, 200);  
        else fill(20);                    
      }

      noStroke();
      rect(0, 0, tamaño, tamaño);

      dibujarFigura(tamaño, condicion);

      pop();
    }
  }
}

// Función que dibuja un círculo con color y tamaño según parámetros
void dibujarFigura(float tamaño, boolean condicion) {
  if (cambiarColor) {
    if (condicion) fill(200, 0, 0);   
    else fill(100);                  
  } else {
    if (condicion) fill(20);         
    else fill(30, 0, 200);            
  }

  noStroke();
  ellipse(0, 0, tamaño * tamañoCirculo / 10, tamaño * tamañoCirculo / 10);
}

// Función para dibujar el botón de reinicio
void dibujarBoton() {
  fill(247, 197, 148);
  rect(650, 350, 120, 50);
  fill(0);
  text(reinicio, 615, 360);
}

// CLick mouse
void mousePressed() {
  if (mouseX > 590 && mouseX < 710 && mouseY > 325 && mouseY < 375) {
    // Si clickeamos sobre el botón, reseteamos variables
    cambiarColor = false;
    tamañoCirculo = 9; 
  } else {
    // Si clickeamos fuera, cambiamos el modo de color
    cambiarColor = !cambiarColor;
  }
}

// Tecla presionada
void keyPressed() {
  tamañoCirculo = obtenerTamañoRandom(6, 12);
}

// Función que retorna un número entero aleatorio entre mínimo y máximo
int obtenerTamañoRandom(int minimo, int maximo) {
  return int(random(minimo, maximo));
}
