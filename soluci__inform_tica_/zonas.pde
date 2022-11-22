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
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  popStyle();
}

void dibujaEstante1 () {

  pushStyle ();
  imageMode(CENTER);
  displayImg(2, 350, height/3, estanteWidth, estanteHeight);
  textFont(getFontAt(2));
  fill(255);
  rect(libroWidth+40, height/3-150, libroWidth, libroHeight);
  rect(libroWidth+160, height/3-150, libroWidth, libroHeight);
  rect(libroWidth+280, height/3-150, libroWidth, libroHeight);
  rect(libroWidth+400, height/3-150, libroWidth, libroHeight);
  popStyle();
}

void dibujaEstante2 () {
  
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, width-320, height/2, estanteWidth, estanteHeight);
  textFont(getFontAt(2));
  fill(255);
  rect(libroWidth+40, height/2, libroWidth, libroHeight);
  rect(libroWidth+160, height/2, libroWidth, libroHeight);
  rect(libroWidth+280, height/2, libroWidth, libroHeight);
  rect(libroWidth+400, height/2, libroWidth, libroHeight);
  popStyle();
}

void dibujaEstante3 () {
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, 350, 2*height/3, estanteWidth, estanteHeight);
  textFont(getFontAt(2));
  fill(255);
  rect(10.6*libroWidth+40, height/3, libroWidth, libroHeight);
  rect(10.6*libroWidth+160, height/3, libroWidth, libroHeight);
  rect(10.6*libroWidth+280, height/3, libroWidth, libroHeight);
  rect(10.6*libroWidth+400, height/3, libroWidth, libroHeight);
  popStyle();
}
void dibujaEstante4 () {
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, width-320, 2*height/3+estanteHeight, estanteWidth, estanteHeight);
  textFont(getFontAt(2));
  fill(255);
  rect(10.6*libroWidth+40, 2*height/3, libroWidth, libroHeight);
  rect(10.6*libroWidth+160, 2*height/3, libroWidth, libroHeight);
  rect(10.6*libroWidth+280, 2*height/3, libroWidth, libroHeight);
  rect(10.6*libroWidth+400, 2*height/3, libroWidth, libroHeight);
  popStyle();
}

void dibujaEstante5 () {
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, 350, 2*height/3+100, estanteWidth, estanteHeight);
  textFont(getFontAt(2));
  displayImg(3, trofeoX+60, 2*height/3-20, trofeoX, trofeoY);
  displayImg(4, trofeoX+230, 2*height/3-20, trofeoX, trofeoY );
  displayImg(1, trofeoX+410, 2*height/3-15, trofeoX, trofeoY);
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
  displayImg(5, width-400, 100, 200, 100);
  displayImg(5, width-150, 220, 200, 100 );
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
