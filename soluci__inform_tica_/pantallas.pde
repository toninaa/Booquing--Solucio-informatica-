// funciones de dibujo de las pantallas

void dibujaPantallaInicio() {

  pushStyle();
  imageMode(CENTER);
  disableButtons();
  enableButtonsIniciales();
  textFont(getFontAt(2));
  displayButtonsIniciales();
  displayLogo(width/2, height/3, logoWidth, logoHeight);
  fill(231, 227, 147);
  textFont(getFontAt(0));
  text("BOOQUING", width/2-150, height/3+20);
  popStyle();
}

void dibujaBiblioteca () {
  pushStyle ();
  imageMode(CENTER);
  disableButtons();
  enableButtonsMenu();
  enableButtonsBiblioteca();
  dibujaMenu();
  dibujaEstante1 ();
  dibujaEstante2 ();
  dibujaEstante3 ();
  dibujaEstante4 ();
  dibujaLogo();
  textFont(getFontAt(2));
  displayButtonsMenu();
  displayButtonsBiblioteca();
  popStyle();
}

void dibujaPerfil () {
  pushStyle ();
  disableButtons();
  textFont(getFontAt(2));
  enableButtonsMenu();
  enableButtonsPerfil();
  dibujaMenu();
  nuevoLibro ();
  dibujaEstante5 ();
  esquinaIzquierda();
  dibujaTextoPerfil();
  displayButtonsMenu();
  displayButtonsPerfil();
  popStyle();
}

void dibujaNuevoLibro () {
  pushStyle();
  disableButtons();
  enableButtonsMenu();
  dibujaMenu();
  esquinaIzquierda();
  fill(133, 77, 39);
  textFont(getFontAt(2));
  dibujaMenu();
  text("Nuevo libro", 200, 250);
  text("Valoración", 1060, 400);
  fill(255);
  stroke(231, 227, 147);
  strokeWeight(2);
  rect (100, 300, 800, 400);
  rect(950, 450, 400, 250);
  popStyle();
  PagNuevoLibro();
  textFont(getFontAt(2));
  displayButtonsMenu(); 
  displayTextField(); 
}


void dibujaAñadirLibro () {
  pushStyle();
  disableButtons();
  enableButtonsMenu();
  dibujaMenu();
  esquinaIzquierda();
  text("Nuevo libro", 200, 250);
  text("Valoración", 1060, 400);
  fill(255);
  stroke(231, 227, 147);
  strokeWeight(2);
  rect (100, 300, 800, 400);
  rect(950, 450, 400, 250);
  popStyle();
 
}

void dibujarEmpezarLeer () {
  pushStyle();
  disableButtons();
  enableButtonsMenu();
  dibujaMenu();
  esquinaIzquierda();
  text("Empezar libro", 200, 250);
  stroke(231, 227, 147);
  strokeWeight(2);
  rect (100, 300, 800, 400);
  rect(950, 450, 400, 250);
  popStyle();
}

void establecerTops () {
  pushStyle();
  dibujaMenu();
  esquinaIzquierda();
  popStyle();
}

void establecerRetos () {
  pushStyle();
  dibujaMenu();
  esquinaIzquierda();
  popStyle();
}

void dibujarRetos () {
}

void dibujarTops () {
}

void verLibrosLeidos () {
  pushStyle();
  fill(115, 135, 123);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  text("LEIDOS", 250, 60);
  volverAtras();
  popStyle();
}

void verLibrosPendientes () {
  pushStyle();
  fill(115, 135, 123);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  text("PENDIENTES", 250, 60);
  volverAtras();
  popStyle();
}

void verMiLista () {
  pushStyle();
  fill(115, 135, 123);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  text("MI LISTA", 250, 60);
  volverAtras();
  popStyle();
}
