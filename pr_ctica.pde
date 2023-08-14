int x = 100; // Posición en x del círculo
int y = 100; // Posición en y del círculo
int diametro = 60; // Diámetro del círculo

int buttonX = 150;       // Posición en x del botón
int buttonY = 200;       // Posición en y del botón
int buttonWidth = 100;   // Ancho del botón
int buttonHeight = 40;   // Alto del botón
color buttonColor = color(100); // Color del botón (gris oscuro)

void setup() {
  size(400, 400); // Tamaño de la ventana
  background(#C7FCEB);
  fill(#FA2E0A);
  noLoop();
}

void draw() {
 ellipse(x, y, diametro, diametro);

  // Dibuja una línea desde el centro de la ventana hasta el círculo
  line(width/2, height/2, x, y);
  
  // Dibuja un rectángulo en la esquina superior derecha
  rectMode(CORNER);
  fill(#88C9FA); // Relleno azul
  stroke(255);
  rect(width - 50, 0, 70, 50);
  
  // Dibuja un triángulo en la esquina inferior izquierda
  triangle(0, height, 0, height - 50, 50, height);
  
  // Dibuja un cuadrado centrado en la parte inferior
  rectMode(CENTER);
  fill(0, 255, 0); // Relleno verde
  rect(width/2, height - 50, 50, 50);
  
  // Dibuja el texto "Hola, Processing!" en la parte superior
  textSize(20);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Hola, Processing!", width/2, 30);
   save("hola_mundo.png"); // Guarda la imagen como archivo
}

void mouseMoved() {
  background(225); // Limpia el fondo antes de actualizar la posición
  x = mouseX; // Actualiza la coordenada x del círculo con la posición x del mouse
  y = mouseY; // Actualiza la coordenada y del círculo con la posición y del mouse
  redraw(); // Redibuja el contenido
  }
