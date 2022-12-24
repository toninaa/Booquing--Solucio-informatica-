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
  //disableCarrousels(); 
  //enableCarrouselsBiblio(); 
  enableButtonsMenu();
  dibujaMenu();
  dibujaEstante1 ();
  dibujaEstante2 ();
  dibujaEstante3 ();
  dibujaEstante4 ();
  dibujaLogo();
  textFont(getFontAt(2));
  displayButtonsMenu();
  es1.display();
  es2.display();
  es3.display();
  es4.display();
  popStyle();
}

void dibujaPerfil () {
  pushStyle ();
  disableButtons();
  textFont(getFontAt(2));
  enableButtonsMenu();
  enableButtonsPerfil();
  dibujaMenu();
  fill(221, 114, 48); 
  noStroke(); 
  nuevoLibro ();
  dibujaEstante5 ();
  esquinaIzquierda();
  dibujaTextoPerfil(); 
  displayButtonsMenu();
  displayButtonsPerfil();
  popStyle();
}

// amb es boto leido 
void dibujaNuevoLibro () {
  pushStyle();
  disableButtons();
  disableCalendario(); 
  enableCalendario(); 
  enableButtonCalendario(); 
  enableButtonsMenu();
  enableSelect1(); 
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
  displaySelect1();
  Calendario.display1();
  c.display();
  
}


void dibujaAñadirLibro () {
  pushStyle();
  disableButtons();
  disableSelects();
  enableButtonsMenu();
  enableButtonsAñadir();
  enableSelect3(); 
  dibujaMenu();
  textFont(getFontAt(2)); 
  esquinaIzquierda();
  fill(133, 77, 39);
  text("Nuevo libro", 220, 250);
  text("Portada", 1040, 320);
  fill(255);
  stroke(231, 227, 147);
  strokeWeight(2);
  rect (100, 300, 800, 400);
  rect(950, 350, 400, 250);
  displayButtonsMenu();
  displayTextField2();
  displayButtonsAñadir(); 
  displaySelect3();
  popStyle();
 
}

void dibujarEmpezarLeer () {
  pushStyle();
  disableButtons();
  disableImageButton(); 
  enableImageButton();
  enableButtonsMenu();
  enableButtonsAñadir();
  enableButtonsNuevoLibro(); 
  dibujaMenu();
  esquinaIzquierda();
  textFont(getFontAt(2));
  fill(133, 77, 39);
  text("Empezar libro", 230, 250);
  text("Elegir destino", 1090, 320);
  stroke(231, 227, 147);
  strokeWeight(2);
  fill(255); 
  rect (100, 300, 800, 400);
  rect(950, 350, 400, 250);
  displayButtonsMenu();
  displayTextField2();
  displayButtonsNuevoLibro(); 
  displayImageButton(); 
  popStyle();
}

void establecerTops () {
  pushStyle();
  disableButtons();
  enableButtonsMenu();
  dibujaMenu();
  esquinaIzquierda();
  textFont(getFontAt(2));
  fill(133, 77, 39);
  text("Establecer Top's", 260, 290);
   text("Previsualización", 1110, 350);
  fill(255); 
  stroke(231, 227, 147);
  strokeWeight(2);
  rect (100, 350, 800, 400);
  rect(950, 400, 400, 250);
  displayButtonsMenu();
  displayTextFieldTops(); 
  popStyle();
}

void establecerRetos () {
  pushStyle();
  disableButtons();
  disableSelects(); 
  disableCounters(); 
  enableCounter(); 
  enableButtonsMenu();
  enableSelect2();
  dibujaMenu();
  esquinaIzquierda();
  textFont(getFontAt(2));
  fill(133, 77, 39);
  text("Establecer Retos", 260, 290);
  fill(255);
  stroke(231, 227, 147);
  strokeWeight(2);
  rect (100, 350, 1000, 400);
  displayButtonsMenu();
  displaySelect2();
  displayCounter(); 
  popStyle();
}

void dibujarRetos () {
  pushStyle();
  disableButtons();
  enableButtonsAtras(); 
  enableButtonVerTodo(); 
  dibujaMenu();
  textFont(getFontAt(2));
  fill(0); 
  text("RETOS", 250, 60);
  fill(133, 77, 39);
  text("Retos Activos", 260, 290);
  text("Retos Conseguidos", 900, 290);
  displayButtonsAtras();
  displayButtonVerTodo(); 
  popStyle();
  
}

void dibujarRetosConseguidos () {
  pushStyle();
  disableButtons();
  enableButtonsAtras(); 
  dibujaMenu();
  textFont(getFontAt(2));
  fill(0); 
  text("RETOS CONSEGUIDOS", 250, 60);
  displayButtonsAtras();
  popStyle();
  
}



void dibujarTops () {
  pushStyle();
  disableButtons();
  enableButtonsAtras(); 
  dibujaMenu();
  textFont(getFontAt(2));
  fill(0); 
  text("TOP'S", 250, 60);
  displayButtonsAtras();
  popStyle();
  
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
