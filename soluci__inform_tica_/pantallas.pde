// funciones de dibujo de las pantallas

void dibujaPantallaInicio() {

  pushStyle();
  imageMode(CENTER);
  // desabilitar y abilitar los objetos necesarios para esta pantalla
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
  // desabilitar y abilitar los objetos necesarios para esta pantalla
  disableButtons();
  enableButtonsMenu();
  dibujaMenu();
  dibujaLogo();
  textFont(getFontAt(2));
  displayButtonsMenu();
  es1.display();
  es2.display();
  es3.display();
  es4.display();
  dibujaEstante1 ();
  dibujaEstante2 ();
  dibujaEstante3 ();
  dibujaEstante4 ();
  popStyle();
}

void dibujaPerfil () {
  pushStyle ();
  // desabilitar y abilitar los objetos necesarios para esta pantalla
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
  es5.display(); 
  popStyle();
}

// amb es boto leido 
void dibujaNuevoLibro () {
  pushStyle();
  // desabilitar y abilitar los objetos necesarios para esta pantalla
  disableButtons();
  disableCalendario(); 
  enableCalendario(); 
  enableButtonCalendario(); 
  enableButtonsMenu();
  enableSelect1();
  enablePopUp(); 
  // dibujar los objetos
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
  calendarioInicioFin();  
  imgButtons[0].display();
  displayPopUp(); 
  
  
  
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
  imgButtons[0].display();
  popStyle();
 
}

void dibujarEmpezarLeer () {
  pushStyle();
  disableButtons();
  disableImageButton();
  disableCalendario(); 
  enableCalendario(); 
  enableButtonCalendario(); 
  enableImageButton();
  enableButtonsMenu();
  enableButtonsAñadir();
  enableButtonsNuevoLibro(); 
  dibujaMenu();
  esquinaIzquierda();
  textFont(getFontAt(2));
  fill(133, 77, 39);
  text("Empezar libro", 230, 250);
  text("Elegir destino", 1090, 400);
  stroke(231, 227, 147);
  strokeWeight(2);
  fill(255); 
  rect (100, 300, 800, 400);
  rect(950, 450, 400, 250);
  displayButtonsMenu();
  displayTextField2();
  displayButtonsNuevoLibro(); 
  imgButtons[0].display();
  calendarioInicio(); 
  popStyle();
}

void establecerTops () {
  pushStyle();
  disableButtons();
  disableCounters(); 
  enableButtonsMenu();
  enableCounterTops(); 
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
  c2.display(); 
  popStyle();
}

void establecerRetos () {
  pushStyle();
  disableButtons();
  disableSelects(); 
  disableCounters();
  disableTimeField(); 
  enableTimeField(); 
  enableCounterRetos(); 
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
  rect (100, 350, 1200, 400);
  displayButtonsMenu();
  displaySelect2();
  c1.display(); 
  tif.display();
  imgButtons[1].display();
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
  displayTextFieldBuscar(); 
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
  displayTextFieldBuscar(); 
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
