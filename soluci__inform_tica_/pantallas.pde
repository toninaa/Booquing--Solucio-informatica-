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
  fill(getColorAt(4));
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
  dibujaEstante1 ();
  dibujaEstante2 ();
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
  //dibuja pantalla base
  imageMode(CENTER);
  dibujaMenu();
  dibujaLogo();
  fill(getColorAt(2));
  noStroke();
  dibujaEstante3 ();
  dibujaTextoPerfil();
  displayButtonsMenu();
  displayButtonsPerfil();
  es5.display();
  popStyle();
}

// amb es boto leido
void dibujaAltaLibro () {
  pushStyle();
  // desabilitar y abilitar los objetos necesarios para esta pantalla
  disableButtons();
  disableImageButton();
  enableImageButtonLeido();
  enableButtonsMenu();
  enableButtonsLeidos();
  enableSelectLeidos();
  // dibujar los objetos
  imageMode(CENTER);
  textAlign(CENTER);
  dibujaMenu();
  dibujaLogo();
  fill(getColorAt(1));
  textFont(getFontAt(2));
  dibujaMenu();
  text("Nuevo libro", 200, 180);
  fill(255);
  stroke(getColorAt(4));
  strokeWeight(2);
  rect (50, 200, 1350, 600);
  popStyle();
  pushStyle();
  PagNuevoLibro();
  textFont(getFontAt(2));
  displayButtonsMenu();
  displayTextFieldLeido();
  textFont(getFontAt(5));
  displaySelectLeido();
  imgButtons[0].display();
  displaySelectTextFieldLeido();
  getFontAt(3);
  fill(getColorAt(2));
  displayButtonsLeido();
  textFont(getFontAt(2));
  p.display();

  if (img!=null) {
    imageMode(CENTER);
    image(img, 1150, 600, 300, 350);
    textSize(34);
    textAlign(RIGHT);
    text(titulo, 750, 750);
  } else {
    fill(255);
    rectMode(CENTER);
    stroke(getColorAt(4));
    rect(1150, 600, 300, 350);
    textSize(34);
    textAlign(RIGHT);
  }

  popStyle();
}

//boton modificar
void dibujaAñadirLibro () {
  pushStyle();
  //desabilitar y abilitar los objetos necesarios para esta pantalla
  disableButtons();
  disableSelects();
  disableImageButton();
  enableImageButtonComprar();
  enableButtonsMenu();
  enableSelectComprado();
  enableButtonCalendario();
  enableCalendario();

  //dibujar base de la pantalla
  imageMode(CENTER);
  textAlign(CENTER);
  dibujaMenu();
  dibujaLogo();
  fill(255);
  stroke(getColorAt(4));
  strokeWeight(2);
  rect (50, 200, 1350, 600);
  textFont(getFontAt(2));
  fill(getColorAt(1));
  text("Modificar Libro", 200, 180);
  text("Valoracion", 200, 470);
  textFont(getFontAt(4));
  text("Estado:", 570, 265);
  text("Adquisicion:", 990, 265);

  //dibujar objetos
  displayButtonsMenu();
  displayTextFieldComprar();
  displaySelectsComprar();
  calendarioInicioFin();
  cblModificar.display();
  displayTextArea();
  imgButtons[1].display();
  p.display();
}

void establecerTops () {
  pushStyle();
  //desabilitar y abilitar los objetos necesarios para esta pantalla
  disableButtons();
  disableCounters();
  enableButtonsMenu();
  enableCounterTops();
  disableImageButton();
  enableImageButtonTop();
  //base de la pnatalla
  imageMode(CENTER);
  textAlign(CENTER);
  dibujaMenu();
  dibujaLogo();
  textFont(getFontAt(2));
  fill(getColorAt(1));
  text("Establecer Top's", 260, 290);
  fill(255);
  stroke(getColorAt(4));
  strokeWeight(2);
  rect (100, 350, 1200, 400);
  //objetos
  displayButtonsMenu();
  textFont(getFontAt(5));
  displayTextFieldTops();
  textFont(getFontAt(2));
  imageMode(CORNER);
  cTops.display();
  imgButtons[2].display();
  textFont(getFontAt(2));
  p.display();
  popStyle();
}

void establecerRetos () {
  pushStyle();
  //desabilitar y abilitar los objetos necesarios para esta pantalla
  disableButtons();
  disableSelects();
  disableCounters();
  disableTimeField();
  disableImageButton();
  enableImageButtonRetos();
  enableTimeField();
  enableCounterRetos();
  enableButtonsMenu();
  enableSelect2();
  //base de la pantalla
  pushStyle();
  imageMode(CENTER);
  textAlign(CENTER);
  dibujaMenu();
  dibujaLogo();
  popStyle();
  textFont(getFontAt(2));
  fill(getColorAt(1));
  text("Establecer Retos", 260, 290);
  fill(255);
  stroke(getColorAt(4));
  strokeWeight(2);
  rect (100, 350, 1200, 400);
  displayButtonsMenu();
  displaySelect2(); 
  imageMode(CORNER);
  cRetos.display();
  tif.display();
  displayTextFieldRetos();
  imgButtons[3].display();
  p.display();
  popStyle();
}

void dibujarRetos () {
  pushStyle();
  disableButtons();
  enableButtonsAtrasPerfil();
  enableButtonVerTodo();
  BuscarRetos.setEnabled(true);
  dibujaMenu();
  textFont(getFontAt(2));
  fill(0);
  text("RETOS", 250, 60);
  displayButtonsAtrasPerfil();
  BuscarRetos.display1();
  tListRetos.display();
  popStyle();
}

void dibujarTops () {
  pushStyle();
  disableButtons();
  enableButtonTop();
  enableButtonsAtrasPerfil();
  dibujaMenu();
  textFont(getFontAt(2));
  fill(0);
  text("TOP'S", 250, 60);
  displayButtonsAtrasPerfil();
  tListTops.display();
  BuscarTops.display1();
  popStyle();
}

void borrarLibro () {
  pushStyle();
  pushMatrix();
  //desabilitar y abilitar los objetos necesarios para esta pantalla
  disableButtons();
  enableButtonsMenu();
  BorrarP.setEnabled(true);
  
  //pantalla base
  pushStyle();
  imageMode(CENTER);
  textAlign(CENTER);
  dibujaMenu();
  dibujaLogo();
  rectMode(CENTER);
  fill(255);
  stroke(getColorAt(4));
  strokeWeight(2);
  rect(width/2, height/2+100, 500, 500);
  fill(getColorAt(1));
  textFont(getFontAt(2));
  text("Borrar Libro", width/2, height/2-200);
  popStyle();
  //objetos
  textFont(getFontAt(2));
  displayButtonsMenu();
  textFont(getFontAt(4));
  ISBNborrar.display();
  BorrarP.display1();
  popMatrix();
  popStyle();
}

void verLibrosLeidos () {
  pushStyle();
  enableButtonsAtrasBiblioteca();
  enableButtonsLeidos();
  fill(115, 135, 123);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  text("LEIDOS", 250, 60);
  displayButtonsAtrasBiblioteca();
  libros();
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
  displayButtonsAtrasBiblioteca();
  libros();
  popStyle();
}


void informacionLibros() {
  background (255);
}
