// funciones de dibujo de las zonas

void dibujaLogo () {
  pushStyle();
  displayLogo(width-250, 100, logoWidth/2, logoHeight/2);
  fill(231, 227, 147);
  textFont(getFontAt(1));
  text("BOOQUING", width-320, 110);
  popStyle();
}

void dibujaMenu () {
  pushStyle();
  fill(115, 135, 123);
  noStroke(); 
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  popStyle();
}

void dibujaEstante1 () {

  pushStyle ();
  imageMode(CENTER);
  textFont(getFontAt(4));
  fill(0);
  text("LEIDOS", 100, 600); 
  displayImg(2, 350, height/3, estanteWidth, estanteHeight);
  popStyle();
}

void dibujaEstante2 () {
  
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, width-320, height/2, estanteWidth, estanteHeight);
  textFont(getFontAt(2));
  fill(255);
  popStyle();
}

void dibujaEstante3 () {
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, 350, 2*height/3, estanteWidth, estanteHeight);
  textFont(getFontAt(2));
  fill(255);
  popStyle();
}
void dibujaEstante4 () {
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, width-320, 2*height/3+estanteHeight, estanteWidth, estanteHeight);
  textFont(getFontAt(2));
  fill(255);
  popStyle();
}

void dibujaEstante5 () {
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, 350, 2*height/3+100, estanteWidth, estanteHeight);
  textFont(getFontAt(2));
  popStyle();
}

void dibujaTextoPerfil(){
  textFont(getFontAt(2));
  fill(133, 77, 39);
  text("Nuevo libro", 200, 200);
   fill(133, 77, 39);
  textFont(getFontAt(2));
  text("Establecer Top's", width-500, 400);
  fill(133, 77, 39);
  textFont(getFontAt(2));
  text("Establecer retos", width-500, 650);
}


void nuevoLibro () {

  pushStyle ();

  popStyle();
}

void esquinaIzquierda () {
  pushStyle ();
  imageMode(CENTER);
  displayImg(9, width-400, 100, 200, 100);
  displayImg(9, width-150, 220, 200, 100 );
  fill(0);
  textFont(getFontAt(3));
  text("23", width-150, 110);
  popStyle();
}

void PagNuevoLibro () {
  pushStyle ();
  rectMode(CENTER);
  fill (0);
  textFont(getFontAt(4));
  popStyle();
}

void volverAtras () {
  pushStyle ();
  textFont(getFontAt(2));
  Atras.display1();
  popStyle();
}

void filtrar () {
}

void check(){
  pushStyle ();
  rectMode(CENTER);
  fill (0);
  textFont(getFontAt(4));
  popStyle();
}
