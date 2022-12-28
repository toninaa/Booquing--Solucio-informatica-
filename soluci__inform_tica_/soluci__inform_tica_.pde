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

TextField tf;

TimeField tif;

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
