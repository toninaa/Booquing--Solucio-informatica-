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
  enableSelect1();
  // dibujar los objetos
  dibujaMenu();
  esquinaIzquierda();
  fill(getColorAt(1));
  textFont(getFontAt(2));
  dibujaMenu();
  text("Nuevo libro", 200, 250);
  text("Valoración", 1060, 400);
  fill(255);
  stroke(getColorAt(4));
  strokeWeight(2);
  rect (100, 300, 800, 400);
  popStyle();
  PagNuevoLibro();
  textFont(getFontAt(2));
  displayButtonsMenu();
  cblLeido.display();
  displayTextFieldLeido();
  textFont(getFontAt(5));
  displayTextArea();
  displaySelect1();
  calendarioInicioFin();
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
  enableSelect3();
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
  displaySelect3();
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

void dibujaAñadirALaLista () {
  pushStyle();
  disableButtons();
  disableSelects();
  enableButtonsMenu();
  enableSelect6();
  enableButtonsLista();
  disableImageButton();
  enableImageButtonLista();
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
  displayTextFieldLista();
  displaySelect6();
  displayButtonsLista();
  imgButtons[2].display();
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

void dibujarEmpezarLeer () {
  pushStyle();
  disableButtons();
  disableImageButton();
  disableCalendario();
  enableCalendario();
  enableButtonsEmpezar();
  enableButtonCalendario();
  enableButtonsMenu();
  disableImageButton();
  enableImageButtonEmpezar();
  dibujaMenu();
  esquinaIzquierda();
  textFont(getFontAt(2));
  fill(getColorAt(1));
  text("Empezar libro", 230, 250);
  stroke(getColorAt(4));
  strokeWeight(2);
  fill(255);
  rect (100, 300, 800, 400);
  displayButtonsMenu();
  displayTextFieldLista();
  displayButtonsEmpezar();
  imgButtons[3].display();
  calendarioInicio();
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

void verLibrosPendientes () {
  pushStyle();
  enableButtonsAtrasBiblioteca();
  fill(115, 135, 123);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  text("MI LISTA", 250, 60);
  filtrosComprarYlista();
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

void librosActivos () {
  pushStyle();
  enableButtonsAtrasBiblioteca();
  fill(115, 135, 123);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  text("LIBROS ACTIVOS", 250, 60);
  displayButtonsAtrasBiblioteca();
  fill(getColorAt(4));
  rect(100, 750, 50, 20, 10);
  rect(600, 750, 100, 20, 10);
  rect(1100, 750, 150, 20, 10);
  imageMode(CENTER);
  displayImg(16, 230, 450, 300, 500);
  displayImg(18, 730, 450, 300, 500);
  displayImg(20, 1230, 450, 300, 500);


  popStyle();
}

void informacionLibros() {
  background (255);
}
