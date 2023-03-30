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
  enableCalendario(); 
  enableButtonCalendario(); 
  enableButtonsMenu();
  enableSelect1();
  //enablePopUp(); 
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
  displaySelect1();
  calendarioInicioFin();  
  imgButtons[0].display();
  p.display(); 
 

  
  
  
}


void dibujaAñadirLibro () {
  pushStyle();
  disableButtons();
  disableSelects();
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
  enableButtonsNuevoLibro(); 
  dibujaMenu();
  esquinaIzquierda();
  textFont(getFontAt(2));
  fill(getColorAt(1));
  text("Empezar libro", 230, 250);
  stroke(getColorAt(4));
  strokeWeight(2);
  fill(255); 
  rect (100, 300, 800, 400);
  rect(950, 450, 400, 250);
  displayButtonsMenu();
  displayTextFieldLista();
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
  fill(getColorAt(1));
  text("Establecer Top's", 260, 290);
  fill(255); 
  stroke(getColorAt(4));
  strokeWeight(2);
  rect (100, 350, 1200, 400);
  displayButtonsMenu();
  displayTextFieldTops();
  cTops.display();
  imgButtons[2].display();
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
  fill(getColorAt(1));
  text("Retos Activos", 200, 290);
  text("Retos Conseguidos", 950, 290);
  displayButtonsAtrasPerfil();
  displayButtonVerTodo();
  // s'ha de canviar
  Pg1.display();
  Pg2.display();
  Pg3.display();
  Pg4.display();
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
  
  // s'ha de canviar
  textFont(getFontAt(5)); textAlign(LEFT); fill(getColorAt(1)); 
  displayImg(5, 200, 300, trofeoX,trofeoY/2*1.5);
  text("2 novelas ", 330, 330);
  text("en 5 dias ", 330, 360);
  displayImg(6, 200, 500, trofeoX,trofeoY/2*1.5);
  text("1 ensayo ", 330, 530);
  text("en un mes ", 330, 560);
  displayImg(7, 200, 700, trofeoX,trofeoY/2*1.5);
  text("50 libros ", 330, 730);
  text("en un año", 330, 760);
  displayImg(8, width/2-100, 300, trofeoX,trofeoY/2*1.5);
  text("2 poemas ",width/2+50 , 330);
  text("en un dia", width/2+50, 360);
  displayImg(3, width/2-100, 500, trofeoX,trofeoY/2*1.5);
  text("1 clásico ",width/2+50 , 530);
  text("en un año", width/2+50, 560);
  displayImg(4, width/2-100, 700, trofeoX,trofeoY/2*1.5);
  text("1 teatro ",width/2+50 , 730);
  text("en un mes", width/2+50, 760);
  displayImg(6, width-400, 500, trofeoX,trofeoY/2*1.5);
  text("2 dramas ",width-270 , 530);
  text("en un mes", width-270, 560);
  displayImg(7, width-400, 700, trofeoX,trofeoY/2*1.5);
  text("1 clasico ",width-270 , 730);
  text("en 6 meses", width-270, 760);
  displayImg(8, width-400, 300, trofeoX,trofeoY/2*1.5);
    text("15 libros ",width-270 , 330);
  text("en 4 meses", width-270, 360);

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
  // s'ha de canviar 
  fill(255); stroke(getColorAt(4)); textAlign(LEFT);
  rect(100, height/3, TopW, TopH);
  fill(133, 77, 39);  textFont(getFontAt(4));
  text("Top 10 mejores novelas",110,height/3+40 );
  fill(255);
  rect(width-100-TopW, height/3, TopW, TopH);
  fill(133, 77, 39);  textFont(getFontAt(4));
  text("Top 5 peores novelas", width-90-TopW,height/3+40 );
  fill(255);
  rect(width-2*100-2*TopW, height/3, TopW, TopH);
  fill(133, 77, 39);  textFont(getFontAt(4));
  text("Top 10 mejores poemas", width-2*90-2*TopW-10,height/3+40 );
  fill(255);
  rect(100, height*3/4-100, TopW, TopH);
  fill(133, 77, 39);  textFont(getFontAt(4));
  text("Top 3 mejores Ensayos", 110,height*3/4-60 );
  fill(255);
  rect(width-100-TopW, height*3/4-100, TopW, TopH);
  fill(133, 77, 39);  textFont(getFontAt(4));
  text("Top 10 mejores teatros", width-90-TopW,height*3/4-60 );
  fill(255);
  rect(width-2*100-2*TopW, height*3/4-100, TopW, TopH);
  fill(133, 77, 39);  textFont(getFontAt(4));
  text("Top 10 mejores dramas",width-2*90-2*TopW-10 ,height*3/4-60 );
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

void librosActivos (){
  pushStyle(); 
  enableButtonsAtrasBiblioteca(); 
  fill(115, 135, 123);
  rect(0, 0, menuWidth, menuHeight);
  fill(0);
  textFont(getFontAt(2));
  text("LIBROS ACTIVOS", 250, 60);
  displayButtonsAtrasBiblioteca(); 
  Pg5.display();
  Pg6.display();
  Pg7.display();
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
