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
  enableButtonsBiblioteca(); 
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
  displayButtonsBiblioteca(); 
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
  //enablePopUp(); 
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
  p.display(); 
 // cbl1.display(); 
 // s'ha de canviar ara nomes es una foto (valoració)
  displayImg(25, 520, 500, 250, 50);
  
  
  
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
   p.display();
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
   p.display();
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
   p.display();
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
  p.display();
  popStyle();
}

void dibujarRetos () {
  pushStyle();
  disableButtons();
  enableButtonsAtrasPerfil(); 
  enableButtonVerTodo(); 
  dibujaMenu();
  textFont(getFontAt(2));
  fill(0); 
  text("RETOS", 250, 60);
  fill(133, 77, 39);
  text("Retos Activos", 200, 290);
  text("Retos Conseguidos", 950, 290);
  displayButtonsAtrasPerfil();
  displayButtonVerTodo();
  // s'ha de canviar
  Pg1.disaply();
  Pg2.disaply();
  Pg3.disaply();
  Pg4.disaply();
  fill(getColorAt(4));
  rect(70, 400, 100, 20, 10);
  textFont(getFontAt(5)); textAlign(LEFT); fill(getColorAt(1)); 
  text("5 novelas en dos meses", 70, 450);
  fill(getColorAt(4));
  rect(400, 400, 150, 20, 10);
  fill(getColorAt(1)); 
  text("3 libros en 2 semanas", 400, 450);
  fill(getColorAt(4));
  rect(70, 550, 50, 20, 10);
  fill(getColorAt(1)); 
  text("70 libros en 1 año", 70, 600);
  fill(getColorAt(4));
  rect(400, 550, 200, 20, 10);
  fill(getColorAt(1)); 
  text("4 poemas en una semana", 400, 600);
  displayImg(5, 800, 350, trofeoX,trofeoY/2*1.5);
  text("3 poemas ", 900, 400);
  text("en una semana ", 900, 430);
  displayImg(6, 1100, 350, trofeoX,trofeoY/2*1.5); 
  text("60 libros ", 1200, 400);
  text("en un año ", 1200, 430);
  displayImg(7, 800, 550, trofeoX,trofeoY/2*1.5); 
  text("1 novela ", 900, 600);
  text("en un dia ", 900, 630);
  displayImg(8, 1100, 550, trofeoX,trofeoY/2*1.5);
  text("2 dramas ", 1200, 600);
  text("en una semana ", 1200, 630);
  popStyle();
  
}

void dibujarRetosConseguidos () {
  pushStyle();
  disableButtons();
  enableButtonsAtrasRetos(); 
  dibujaMenu();
  textFont(getFontAt(2));
  fill(0); 
  text("RETOS CONSEGUIDOS", 250, 60);
  displayButtonsAtrasRetos(); 
  displayTextFieldBuscar(); 

  popStyle();
  
}



void dibujarTops () {
  pushStyle();
  disableButtons();
  enableButtonsAtrasPerfil(); 
  dibujaMenu();
  textFont(getFontAt(2));
  fill(0); 
  text("TOP'S", 250, 60);
  displayButtonsAtrasPerfil();
  displayTextFieldBuscar(); 
  popStyle();
  
}

void verLibrosLeidos () {
  pushStyle();
  enableButtonsAtrasBiblioteca(); 
  fill(115, 135, 123);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  text("LEIDOS", 250, 60);
  filtrosLeidosYLista(); 
  displayButtonsAtrasBiblioteca();
  
  popStyle();
}

void verLibrosPendientes () {
  pushStyle();
  enableButtonsAtrasBiblioteca(); 
  fill(115, 135, 123);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  text("MI LISTA", 250, 60);
  filtrosLeidosYLista(); 
  displayButtonsAtrasBiblioteca(); 
  popStyle();
}

void verMiLista () {
  pushStyle();
  enableButtonsAtrasBiblioteca(); 
  fill(115, 135, 123);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  text("COMPRAR", 250, 60);
  filtrosComprar(); 
  displayButtonsAtrasBiblioteca(); 
  popStyle();
}

void librosActivos (){
  pushStyle(); 
  enableButtonsAtrasBiblioteca(); 
  fill(115, 135, 123);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  text("LIBROS ACTIVOS", 250, 60);
  displayButtonsAtrasBiblioteca(); 
  Pg5.disaply();
  Pg6.disaply();
  Pg7.disaply();
  fill(getColorAt(4));
  rect(100, 750, 50, 20, 10);
  rect(600, 750, 100, 20, 10);
  rect(1100, 750, 150, 20, 10);
  imageMode(CENTER);
  displayImg(16,230, 450, 300, 500);
  displayImg(18,730, 450, 300, 500);
  displayImg(20, 1230, 450, 300, 500);
  

  popStyle(); 
}
