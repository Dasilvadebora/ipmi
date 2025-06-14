PImage img;
int tam = 200;
boolean usarCirculo = true;

color[] colores = {
  #FF2A2A, // rojo
  #72D15E, // verde
  #4E47A1, // azul oscuro
  #FF7F00, // naranja
  #A3368A, // magenta
  #6E68B1, // lila
  #000000  // negro
};



void setup() {
  size(800, 400);
  img = loadImage("op.JPG");
  imageMode(CORNER);
  noStroke();
}



void draw() {
  
  // Fondo
  fill(colores[6]); // negro
  rect(0, 0, width / 2, height);

  // Fondo de mitad derecha
  fill(colores[5]);
  rect(width / 2, 0, width / 2, height);

  // Imagen original a la izquierda
  image(img, 0, 0, width / 2, height);

  //
  dibujarCuadro(width / 2, 0, usarCirculo);
}

void dibujarCuadro(float offsetX, float offsetY, boolean mostrarCirculo) {
  for (int j = 0; j < 2; j++) {
    for (int i = 0; i < 2; i++) {
      float x = offsetX + i * tam;
      float y = offsetY + j * tam;
      dibujarBloque(x, y, i, j);
      if (mostrarCirculo) {
        if ((i == 0 && j == 0) || (i == 1 && j == 1)) {
          fill(colores[0]);
          ellipse(x + tam / 2, y + tam / 2, tam * 0.5, tam * 0.5);
        } else {
          pushMatrix();
          translate(x + tam / 2, y + tam / 2);
          rotate(PI / 4);
          rectMode(CENTER);
          fill(colores[5]);
          rect(0, 0, tam * 0.4, tam * 0.4);
          popMatrix();
        }
      }
    }
  }
}

color obtenerColor(int cara, int i, int j) {
  if (cara == 0) {
    if ((i == 0 && j == 0) || (i == 1 && j == 1)) return colores[6];
    else return colores[6];
  } else if (cara == 1) {
    if ((i == 0 && j == 0) || (i == 1 && j == 1)) return colores[5];
   else return colores[0]; 
  } else { 
    return colores[5];
  }
}

void dibujarBloque(float x, float y, int i, int j) {
  
  fill(obtenerColor(2, i, j));
  quad(x, y, x + tam, y, x + tam * 0.5, y + tam * 0.5, x + tam * 0.5, y + tam * 0.5);

  // izquierda
  fill(obtenerColor(0, i, j));
  quad(x, y, x + tam * 0.5, y + tam * 0.5, x + tam * 0.5, y + tam, x, y + tam);

  // derecha
  fill(obtenerColor(1, i, j));
  quad(x + tam, y, x + tam, y + tam, x + tam * 0.5, y + tam, x + tam * 0.5, y + tam * 0.5);
}

void keyPressed() {
  if (key == 'r') {
    usarCirculo = !usarCirculo; // cambia entre figuras
  }
}

void mousePressed() {
  println("Mouse en: " + mouseX + ", " + mouseY);
}
