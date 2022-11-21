

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
  Biblio = new Button ("Biblioteca", width/3+225, height/2+100, bInX, bInY);
  Perfil = new Button ("Perfil", width/3, height/2+100, bInX, bInY);
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
  Iniciar1 = new Button ("Iniciar", width-600, 450, LeidoX, LeidoY);
  Ver1 = new Button ("Ver", width-350, 450, LeidoX, LeidoY);
  Iniciar1.display3();
  Ver1.display3();
  fill(133, 77, 39);
  textFont(getFontAt(2));
  text("Establecer retos", width-500, 650);
  Iniciar2 = new Button ("Iniciar", width-600, 700, LeidoX, LeidoY);
  Ver2 = new Button ("Ver", width-350, 700, LeidoX, LeidoY);
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
  fill(255);
  stroke(231, 227, 147);
  strokeWeight(2);
  rect (100, 300, 800, 400);
  popStyle();
  PagNuevoLibro();
}


void dibujaAñadirLibro () {
  pushStyle();
  dibujaMenu();
  esquinaIzquierda();
  popStyle();
}

void dibujarEmpezarLeer () {
  pushStyle();
  dibujaMenu();
  esquinaIzquierda();
  popStyle();
}

void establecerTops (){
  pushStyle();
  dibujaMenu();
  esquinaIzquierda();
  popStyle();
  
}

void establecerRetos (){
  pushStyle();
  dibujaMenu();
  esquinaIzquierda();
  popStyle();
  
}

void dibujarRetos (){
}

void dibujarTops (){
}
