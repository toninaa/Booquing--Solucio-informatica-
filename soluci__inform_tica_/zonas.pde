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
  Biblio1 = new Button ("Biblioteca", 20, 10, bInX, bInY);
  Perfil1 = new Button ("Perfil", 280, 10, bInX, bInY);
  Biblio1.display1();
  Perfil1.display1();
  popStyle();
}

void dibujaEstante1 () {

  pushStyle ();
  imageMode(CENTER);
  textFont(getFontAt(2));
  Move1 = new Button (">", estanteWidth-90, height/2+50, MoveX, MoveY);
  Move2 = new Button ("<", 30, height/2+50, MoveX, MoveY);
  Move1.display2();
  Move2.display2();
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
  textFont(getFontAt(2));
  Move3 = new Button (">", estanteWidth-90, height/3-100, MoveX, MoveY);
  Move4 = new Button ("<", 30, height/3-100, MoveX, MoveY);
  Move3.display2();
  Move4.display2();
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
  textFont(getFontAt(2));
  Move5 = new Button (">", width-70, height/2-100, MoveX, MoveY);
  Move6 = new Button ("<", estanteWidth+90, height/2-100, MoveX, MoveY);
  Move5.display2();
  Move6.display2();
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
  textFont(getFontAt(2));
  Move7 = new Button (">", width-70, height/3+370, MoveX, MoveY);
  Move8 = new Button ("<", estanteWidth+90, height/3+370, MoveX, MoveY);
  Move7.display2();
  Move8.display2();
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
  textFont(getFontAt(2));
  Move3 = new Button (">", estanteWidth-90, 2*height/3, MoveX, MoveY);
  Move4 = new Button ("<", 30, 2*height/3, MoveX, MoveY);
  Move3.display2();
  Move4.display2();
  displayImg(3, trofeoX+60, 2*height/3-20, trofeoX, trofeoY);
  displayImg(4, trofeoX+230, 2*height/3-20, trofeoX, trofeoY );
  displayImg(1, trofeoX+410, 2*height/3-15, trofeoX, trofeoY);
  popStyle();
}


void nuevoLibro () {

  pushStyle ();
  Leido = new Button ("Leido", 100, 250, LeidoX, LeidoY);
  Pendientes = new Button ("Comprado", 300, 250, LeidoX, LeidoY);
  MiLista = new Button ("Quiero", 500, 250, LeidoX, LeidoY);
  Empezar =  new Button ("Empezar a leer", 150, 350, 3*LeidoX, LeidoY);
  Leido.display3();
  Pendientes.display3();
  MiLista.display3();
  Empezar.display3();
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

void PagNuevoLibro (){
  pushStyle ();
  rectMode(CENTER);
  fill (0); 
  textFont(getFontAt(4));
  text ("Título:",200, 350);
  text ("Autor/a:",210, 400);
  text ("Editorial:",230, 450); 
  Titulo = new TextField(410, 340, CampoX, CampoY);
  Titulo.display();
  popStyle(); 
   }
