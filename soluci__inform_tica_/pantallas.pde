

// funciones de dibujo de las pantallas



void dibujaPantallaInicio() {

  pushStyle();
  imageMode(CENTER);
  displayLogo(width/2, height/3, logoWidth, logoHeight);
  fill(0);
  fill(231, 227, 147);
  textFont(getFontAt(0));
  text("BOOQUING", width/2-150, height/3+20);
  popStyle();
  pushStyle();
  textFont(getFontAt(2));
  Biblio.display1();
  Perfil.display1();
  popStyle();
}

void dibujaBiblioteca () {
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, 350, height/3, estanteWidth, estanteHeight);
  displayImg(2, width-320, height/2, estanteWidth, estanteHeight);
  displayImg(2, 350, 2*height/3, estanteWidth, estanteHeight);
  displayImg(2, width-320, 2*height/3+estanteHeight, estanteWidth, estanteHeight);
  dibujaMenu();
  dibujaEstante1 ();
  dibujaEstante2 ();
  dibujaEstante3 ();
  dibujaEstante4 ();
  dibujaLogo();


  popStyle();
}

void dibujaPerfil () {
  pushStyle ();
  fill(133, 77, 39);
  textFont(getFontAt(2));
  dibujaMenu();
  text("Nuevo libro", 200, 200);
  nuevoLibro ();
  popStyle();
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, 350, 2*height/3+100, estanteWidth, estanteHeight);
  dibujaEstante5 ();
  popStyle();
  esquinaIzquierda();
  fill(133, 77, 39);
  textFont(getFontAt(2));
  text("Establecer Top's", width-500, 400);
  Iniciar1.display3();
  Ver1.display3();
  fill(133, 77, 39);
  textFont(getFontAt(2));
  text("Establecer retos", width-500, 650);
  Iniciar2.display3();
  Ver2.display3();
}

void dibujaNuevoLibro () {
  pushStyle();
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
  
}


void dibujaAñadirLibro () {
  pushStyle();
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
  dibujaMenu();
  esquinaIzquierda();
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
