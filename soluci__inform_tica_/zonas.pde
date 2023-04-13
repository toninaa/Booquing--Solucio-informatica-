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
  displayImg(2, 380, 450, estanteWidth+100, estanteHeight);
  popStyle();
}

void dibujaEstante2 () {
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, width-340, 650, estanteWidth+100, estanteHeight);
  textFont(getFontAt(2));
  fill(255);
  popStyle();
}


void dibujaEstante3 () {
  pushStyle ();
  imageMode(CENTER);
  displayImg(2, 350, 2*height/3, estanteWidth, estanteHeight);
  textFont(getFontAt(2));
  popStyle();
}

void dibujaTextoPerfil() {
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


void calendarioInicioFin () {
  pushStyle();
  fill(0);
  textFont(getFontAt(4)); fill(getColorAt(1));
  text("Inicio:",890, 500);
  text("Fin:", 900, 580);
  fill(255);
  stroke(231, 227, 147);
  rect(950, 470, 140, 40, 5);
  rect(950, 550, 140, 40, 5);
  fill(133, 77, 39);
  text(dataCalendariInicio,1020, 500);
  text(dataCalendariFin, 1020, 580);
  CalendarioI.display1();
  CalendarioF.display1();
  cI.display();
  cF.display();
  popStyle();
}



void displayPopUp () {
  if (imgButtons[0].mouseOverButton()) {
    p.display();
  }
}






void libros () {
  textFont(getFontAt(5));
  textAlign(LEFT);
  fill(getColorAt(1));
  //afegir select --> l'he de recorrer i a cada volta ha de dibuixar 
  displayImg(28, 500, 300, libroWidth*1.5, libroHeight*1.5);
  text("Bodas de sangre", 630, 330);
  text("Federico Garcia Lorca", 630, 370);
  //displayImg(25, 630, 400, 200, 50);
  displayImg(17, 500, 500, libroWidth*1.5, libroHeight*1.5);
  text("La Celestina", 630, 530);
  text("Fernando de Rojas", 630, 570);
  //displayImg(25, 630, 600, 200, 50);
  displayImg(22, 500, 700, libroWidth*1.5, libroHeight*1.5);
  text("Nunca", 630, 730);
  text("Ken Follet", 630, 770);
  // displayImg(27, 630, 800, 200, 50);
  displayImg(23, 950, 300, libroWidth*1.5, libroHeight*1.5);
  text("Martina", 1080, 330);
  text("Carlos Ruiz Zafón", 1080, 370);
  //displayImg(26, 1080, 400, 200, 50);
  displayImg(24, 950, 500, libroWidth*1.5, libroHeight*1.5);
  text("Un cuento perfecto", 1080, 530);
  text("Elisabet Bennavent", 1080, 570);
  // displayImg(29, 1080, 600, 200, 50);
  displayImg(18, 950, 700, libroWidth*1.5, libroHeight*1.5);
  text("La vida del buscón", 1080, 730);
  text("Quevedo", 1080, 770);
  // displayImg(25, 1080, 800, 200, 50);
}


void check() {
  pushStyle ();
  rectMode(CENTER);
  fill (0);
  textFont(getFontAt(4));
  popStyle();
}
