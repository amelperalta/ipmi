//Amel Peralta
//Comision 1

PImage friends1, friends2, friends3;
PFont t;

String algo1, algo2, algo3;
int posX1, posX2, posX3;
float posY3;

boolean mostrarBotonReiniciar = false;
boolean reiniciar = false;

int botonX;
int botonY;
int botonAncho;
int botonAlto;

int miFrameCount = 0; 

void setup() {
  size(640, 480);

  // Cargar imágenes y fuente
  friends1 = loadImage("friendss.jpg");
  friends2 = loadImage("friends2.jpg");
  friends3 = loadImage("friends4.jpg");

  t = loadFont("broad.vlw");

  // Frases
  algo1 = "Friends";
  algo2 = "Protagonistas  Jennifer Aniston, Courtney Cox, Lisa Kudrow, Matt LeBlanc, Matthew Perry, David Schwimmer";
  algo3 = "Primera emisión 22 de septiembre de 1994 Última emisión 6 de mayo de 2004";

  reiniciarAnimacion();
}

void draw() {
  background(255);

  botonX = 250;
  botonY = 400;
  botonAncho = 140;
  botonAlto = 40;
  
//Primer imagen

  if (miFrameCount < 300) {
    image(friends1, 0, 0);
    float tono = map(posX1, 400, 220, 0, 255);
    fill(0, tono);
    textFont(t, 50); 
    textAlign(LEFT, BASELINE); 
    text(algo1, posX1, 400);
    if (posX1 > 220) posX1 = posX1 - 2;
    
    //Segunda imagen

  } else if (miFrameCount < 600) {
    image(friends2, 0, 0);
    fill(0);
    textFont(t, 20);
    textAlign(LEFT, BASELINE);
    text("Protagonistas", posX2, 300);
    fill(0,0,255);
    text("Jennifer Aniston, Courtney Cox,", posX2, 330);
    text("Lisa Kudrow, Matt LeBlanc,", posX2, 360);
    text("Matthew Perry, David Schwimmer", posX2, 390);
    if (posX2 > 60) posX2 = posX2 -3;

//Tercer imagen

  } else {
    image(friends3, 0, 0);
    fill(255,0,0);
    textFont(t, 20);
    textAlign(LEFT, BASELINE);
    text("Primera emisión:", posX3, posY3 - 90);
    fill(0,0,255);
    text("22 de septiembre de 1994", posX3, posY3 - 60);
    fill(255,0,0);
    text("Última emisión:", posX3, posY3 - 30);
    fill(0,0,255);
    text("6 de mayo de 2004", posX3, posY3);
    posY3 = posY3 - 1;
    if (posX3 > 200) posX3 = posX3 - 4;

    // Mostrar botón de reinicio
    mostrarBotonReiniciar = true;
    fill(200);
    rect(botonX, botonY, botonAncho, botonAlto, 10);

    fill(0);
    textAlign(CENTER, CENTER); //
    textFont(t, 20);
    text("Reiniciar", botonX + botonAncho / 2, botonY + botonAlto / 2);
  }

  if (!reiniciar) {
    miFrameCount++;
  } else {
    reiniciarAnimacion();
    reiniciar = false;
  }
}

void mousePressed() {
  if (mostrarBotonReiniciar &&
    mouseX > botonX && mouseX < botonX + botonAncho &&
    mouseY > botonY && mouseY < botonY + botonAlto) {
    reiniciar = true;
  }
}

void reiniciarAnimacion() {
  posX1 = 600;
  posX2 = 600;
  posX3 = 600;
  posY3 = height;
  miFrameCount = 0;
  mostrarBotonReiniciar = false;
}
