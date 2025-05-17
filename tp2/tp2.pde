
//variables

PImage miImagen;
PImage imagenNueva;
PImage imagenExtra;
PImage imagenCuatro;
PImage imagenCinco;

PFont fuenteNueva;

String texto = "Hunter x Hunter,\nUn niño de 12 años \nque descubre que su padre,\nGing está vivo y es un legendario cazador";
String texto2 = "Gon se embarca en una aventura\n para convertirse también en cazador."; 
String texto3 = "Durante el exigente Examen de Cazador,\n conoce a Killua, Kurapika y Leorio,\n quienes se convierten en sus amigos y\n compañeros de viaje.";
String texto4 = "Cada uno tiene sus propias metas,\n y juntos enfrentan diversos desafíos\n que pondrán a prueba su valor y amistad.";
String texto5 = "Gon descubre el verdadero significado\n del sacrificio y el poder de la voluntad,\n mientras sigue buscando a su padre.";

float posX = 0;
float posY = 0;
float velX = 0.2;

float posY2 = 0;
float velY2 = 1;

float posY3;
float velY3 = 1;

float posX4;
float velX4 = 1;

float posY5;
float velY5 = 1;

int charCount5 = 0;
int inicioTiempo;
int pantalla = 0;

boolean mostrarBoton = false;

void setup() {
  
  
  size(640, 480);

  miImagen = loadImage("hunter4.jpg");
  imagenNueva = loadImage("hunter2.jpg");
  imagenExtra = loadImage("hunter3.jpg");
  imagenCuatro = loadImage("hunter5.jpg");
  imagenCinco = loadImage("hunter6.jpg");

  fuenteNueva = loadFont("Myanmar.vlw");

  textFont(fuenteNueva);
  textSize(30);
  textAlign(LEFT, TOP);

  inicioTiempo = frameCount;
}

void draw() {
  
  //INCIAMOS
  
  background(0);

  if (pantalla == 0) {
    fill(#FFFFFF);
    rect(240, 200, 160, 50);
    fill(0);
    textAlign(CENTER, CENTER);
    text("INICIAR", 320, 225);
    
    //PANTALLA 1

  } else if (pantalla == 1) {
    image(miImagen, 0, 0, 640, 480);
    fill(255);
    textAlign(LEFT, TOP);
    text(texto, posX, posY);

    posX += velX;
    //Rebote
    String[] lineas = split(texto, '\n');
    float anchoTexto = 0;
    for (String linea : lineas) {
      float anchoLinea = textWidth(linea);
      if (anchoLinea > anchoTexto) anchoTexto = anchoLinea;
    }
    if (posX <= 0 || posX + anchoTexto >= width) {
      velX = -velX;
    }

    if (frameCount - inicioTiempo > 600) {
      pantalla = 2;
      inicioTiempo = frameCount;
      posY2 = 0;
    }

//PANTALLA 2

  } else if (pantalla == 2) {
    image(imagenNueva, 0, 0, width, height);
    fill(255);
    textAlign(LEFT, TOP);
    text(texto2, 70, posY2);
    posY2 += velY2;

    if (frameCount - inicioTiempo > 300) {
      pantalla = 3;
      inicioTiempo = frameCount;
      posY3 = height;
    }

//PANTALLA3

  } else if (pantalla == 3) {
    image(imagenExtra, 0, 0, width, height);
    fill(#E01919);
    textAlign(LEFT, TOP);
    text(texto3, 50, posY3);
    posY3 -= velY3;

    if (frameCount - inicioTiempo > 300) {
      pantalla = 4;
      inicioTiempo = frameCount;
      posX4 = 0;
      velX4 = 1;
    }

//PANTALLA 4

  } else if (pantalla == 4) {
    image(imagenCuatro, 0, 0, width, height);
    fill(255);
    textAlign(LEFT, TOP);

    // 
    fill(#E01919);
    text(texto4, posX4, 200);
    posX4 += velX4;

    //
    float anchoTexto4 = textWidth(texto4);
    if (posX4 <= 0 || posX4 + anchoTexto4 >= width) {
      velX4 = -velX4;
    }

    if (frameCount - inicioTiempo > 300) {
      pantalla = 5;
      inicioTiempo = frameCount;
      posY5 = height;
      charCount5 = 0;
      mostrarBoton = false;
    }

//PANTALLA 5

  } else if (pantalla == 5) {
    image(imagenCinco, 0, 0, width, height);
    fill(255);
    textAlign(LEFT, TOP);

    //
    if (frameCount % 3 == 0 && charCount5 < texto5.length()) {
      charCount5++;
    }

    String textoParcial = texto5.substring(0, charCount5);
    fill(#E01919);
    text(textoParcial, 60, posY5);
    posY5 -= velY5;

    //
    if (frameCount - inicioTiempo > 300) {
      mostrarBoton = true;
    }

//BOTON REINICIAR

    if (mostrarBoton) {
      fill(196, 22, 22);
      rect(500, 420, 120, 40);
      fill(255);
      textAlign(CENTER, CENTER);
      textSize(24);
      text("REINICIAR", 560, 440);
      textSize(30);
    }
  }
}

void mousePressed() {
  if (pantalla == 0) {
    if (mouseX > 240 && mouseX < 400 && mouseY > 200 && mouseY < 250) {
      pantalla = 1;
      inicioTiempo = frameCount;
      posX = 0;
      posY = 0;
      velX = 0.2;
    }
  } else if (pantalla == 5 && mostrarBoton) {
    if (mouseX > 500 && mouseX < 620 && mouseY > 420 && mouseY < 460) {
      pantalla = 0;
      inicioTiempo = frameCount;
    }
  }
}
