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
  fill(getColorAt(2));
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
  disableImageButton();
  enableImageButtonLeido();
  enableCalendario();
  enableButtonCalendario();
  enableButtonsMenu();
  enableSelectLeidos();
  // dibujar los objetos
  dibujaMenu();
  fill(getColorAt(1));
  textFont(getFontAt(2));
  dibujaMenu();
  text("Nuevo libro", 200, 250);
  text("Valoración", 1060, 400);
  fill(255);
  stroke(getColorAt(4));
  strokeWeight(2);
  rect (50,200, 1350, 600);
  popStyle();
  PagNuevoLibro();
  textFont(getFontAt(2));
  displayButtonsMenu();
  cblLeido.display();
  displayTextFieldLeido();
  textFont(getFontAt(5));
  displayTextArea();
  calendarioInicioFin();
  displaySelectLeido();
  imgButtons[0].display();
  textFont(getFontAt(2));
  p.display();
}

//boton Comprar
void dibujaAñadirLibro () {
  pushStyle();
  disableButtons();
  disableSelects();
  disableImageButton();
  enableImageButtonComprar();
  enableButtonsComprar();
  enableButtonsMenu();
  enableSelectComprado();
  dibujaMenu();
  textFont(getFontAt(2));
  esquinaIzquierda();
  fill(getColorAt(1));
  text("Nuevo libro", 220, 250);
  fill(255);
  stroke(getColorAt(4));
  strokeWeight(2);
  rect (100, 300, 800, 400);
  displayButtonsMenu();
  displayTextFieldComprar();
  displaySelectsComprar();
  displayButtonsComprar();
  imgButtons[1].display();
  p.display();
  
if(img!=null){
    imageMode(CENTER);
    image(img, 1170, 500, 300,350);
    textSize(34); textAlign(RIGHT);
    text(titulo, 750, 750);
  }
  else{
    fill(255); rectMode(CENTER);
    rect(1170, 500, 300,350);
    textSize(34); textAlign(RIGHT);
    text("Sense imatge", 750, 750);
  }
  popStyle();
}


void establecerTops () {
  pushStyle();
  disableButtons();
  disableCounters();
  enableButtonsMenu();
  enableCounterTops();
  disableImageButton();
  enableImageButtonTop();
  dibujaMenu();
  esquinaIzquierda();
  textFont(getFontAt(2));
  fill(getColorAt(1));
  text("Establecer Top's", 260, 290);
  fill(255);
  stroke(getColorAt(4));
  strokeWeight(2);
  rect (100, 350, 1200, 400);
  displayButtonsMenu();
  textFont(getFontAt(5));
  displayTextFieldTops();
  textFont(getFontAt(2));
  cTops.display();
  imgButtons[4].display();
  textFont(getFontAt(2));
  p.display();
  popStyle();
}

void establecerRetos () {
  pushStyle();
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
  dibujaMenu();
  esquinaIzquierda();
  textFont(getFontAt(2));
  fill(getColorAt(1));
  text("Establecer Retos", 260, 290);
  fill(255);
  stroke(getColorAt(4));
  strokeWeight(2);
  rect (100, 350, 1200, 400);
  displayButtonsMenu();
  displaySelect2();
  cRetos.display();
  tif.display();
  displayTextFieldRetos();
  imgButtons[5].display();
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
  displayButtonsAtrasPerfil();
  reto1.display(100,200,retoW,retoH,5);
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
  fill(255);
  stroke(getColorAt(4));
  textAlign(LEFT);
  top1.displayTop(100,250,TopW,TopH);
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
  filtrosLeidos();
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
  filtrosComprarYlista();
  displayButtonsAtrasBiblioteca();
  libros();
  popStyle();
}


void informacionLibros() {
  background (255);
}
