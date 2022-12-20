// Enumeracion de las pantallas de la app
enum PANTALLA {
  INICIO, BIBLIO, PERFIL, LEIDOS, ESTRETOS, ESTTOPS, NUEVO1, NUEVO2, PENDIENTES,
  LISTA, INFO, TOPS, RETOS, ACTIVOS, RETOSCON, INFOACTIVO, EMPEZAR
};

PANTALLA pantalla = PANTALLA.INICIO;

//  campos de texto

TextField Titulo, TituloTops, Autor, Editorial, Valoracion;

Select s1, s2, s3;

Counter c1;

CalendariPlus c;

Carrousel es1, es2, es3, es4, es5; 

String dataCalendari="";


void setup() {
  // Dimensiones de la App
  fullScreen();
  textAlign(CENTER);

  setColors();
  setFonts();
  setMedias();
  setGUI();
}


void draw() {

  background(255);


  // Dibuja la pantalla correspondiente
  switch(pantalla) {
  case INICIO:
    dibujaPantallaInicio();
    break;
  case BIBLIO:
    dibujaBiblioteca();
    break;
  case PERFIL:
    dibujaPerfil();
    break;
  case NUEVO1:
    dibujaNuevoLibro();
    break;
  case EMPEZAR:
    dibujarEmpezarLeer();
    break;
  case NUEVO2:
    dibujaAñadirLibro();
    break;
  case ESTRETOS:
    establecerRetos ();
    break;
  case ESTTOPS:
    establecerTops ();
    break;
  case RETOS:
    dibujarRetos ();
    break;
  case TOPS:
    dibujarTops ();
    break;
  case LEIDOS:
    verLibrosLeidos ();
    break;
  case PENDIENTES:
    verLibrosPendientes ();
    break;
  case LISTA:
    verMiLista ();
    break;
  case RETOSCON:
    dibujarRetosConseguidos();
    break;
  }

  //String infoPantalla= pantalla.ordinal()+")"+pantalla.name();
  //fill(0);
  //text(infoPantalla, width/2, height/2);
}
void mousePressed() {

  if (Biblio.mouseOverButton() && Biblio.enabled) {
    pantalla = PANTALLA.BIBLIO;
  } else if (Perfil.mouseOverButton() && Perfil.enabled) {
    pantalla = PANTALLA.PERFIL;
  } else if (Perfil1.mouseOverButton() && Perfil1.enabled) {
    pantalla = PANTALLA.PERFIL;
  } else if (Biblio1.mouseOverButton() && Biblio1.enabled) {
    pantalla = PANTALLA.BIBLIO;
  } else if (Leido.mouseOverButton() && Leido.enabled) {
    pantalla = PANTALLA.NUEVO1;
  } else if (Empezar.mouseOverButton() && Empezar.enabled) {
    pantalla = PANTALLA.EMPEZAR;
  } else if (Quiero.mouseOverButton() && Quiero.enabled) {
    pantalla = PANTALLA.NUEVO2;
  } else if (Comprar.mouseOverButton() && Comprar.enabled) {
    pantalla = PANTALLA.NUEVO2;
  } else if (Iniciar1.mouseOverButton() && Iniciar1.enabled) {
    pantalla = PANTALLA.ESTTOPS;
  } else if (Iniciar2.mouseOverButton() && Iniciar2.enabled) {
    pantalla = PANTALLA.ESTRETOS;
  } else if (Ver1.mouseOverButton() && Ver1.enabled) {
    pantalla = PANTALLA.TOPS;
  } else if (Ver2.mouseOverButton() && Ver2.enabled) {
    pantalla = PANTALLA.RETOS;
  } else if (Atras.mouseOverButton() && Atras.enabled) {
    pantalla = PANTALLA.PERFIL;
  } else if (VerTodo.mouseOverButton() && VerTodo.enabled) {
    pantalla = PANTALLA.RETOSCON;
  }

  Titulo.isPressed();
  Autor.isPressed();
  Editorial.isPressed();
  Valoracion.isPressed();
  TituloTops.isPressed();
  
   c1.update();
 

 // escuchar los selects 
  if(s1.mouseOverSelect() && s1.enabled){
    if(!s1.collapsed){
      s1.update();      // Actualitzar valor
    }
    s1.toggle();        // Plegar o desplegar
  }


if(s2.mouseOverSelect() && s2.enabled){
    if(!s2.collapsed){
      s2.update();      // Actualitzar valor
    }
    s2.toggle();        // Plegar o desplegar
  }
  
  if(s3.mouseOverSelect() && s3.enabled){
    if(!s3.collapsed){
      s3.update();      // Actualitzar valor
    }
    s3.toggle();        // Plegar o desplegar
  }
  
    // Comprovar si clicam sobre botons del Calendari
  c.checkButtons();
  
  // Si pitja el botó, canvia la visibilitat del calendari.
  if(Calendario.mouseOverButton()&&Calendario.enabled){
    c.visible = !c.visible;
  }
  
  if(c.bNext.mouseOverButton()){
    c.nextMonth();
  }
  
  if(c.bPrev.mouseOverButton()){
    c.prevMonth();
  }
  
  if(c.bOK.mouseOverButton() && c.dateSelected){
    dataCalendari = c.selectedDay +"/"+ c.selectedMonth + "/"+ c.selectedYear;
    c.visible = false;
  }
}

void keyPressed () {
  Titulo.keyPressed(key, (int)keyCode);
  Autor.keyPressed(key, (int)keyCode);
  Editorial.keyPressed(key, (int)keyCode);
  Valoracion.keyPressed(key, (int)keyCode);
  TituloTops.keyPressed(key, (int)keyCode);
}
