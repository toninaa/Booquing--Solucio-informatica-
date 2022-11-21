// Botones
Button Biblio, Biblio1, Perfil1, Perfil, Move1, Move2, Move3, Move4, Move5, Move6, Move7, Move8, Check, Leido, Pendientes, MiLista, Empezar, Iniciar1, Iniciar2, Ver1, Ver2, Atras, Guardar, VerTodo;

// Enumeracion de las pantallas de la app
enum PANTALLA {
  INICIO, BIBLIO, PERFIL, LEIDOS, ESTRETOS, ESTTOPS, NUEVO1, NUEVO2, PENDIENTES, LISTA, INFO, TOPS, RETOS, ACTIVOS, RETOSCON, INFOACTIVO, EMPEZAR
};

PANTALLA pantalla = PANTALLA.INICIO;

//  campos de texto

TextField Titulo, Autor, Editorial, Valoracion; 


void setup() {
  // Dimensiones de la App
  fullScreen();
  textAlign(CENTER);

  setColors();
  setFonts();
  setMedias();
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
    
  }
  
  
}
void mousePressed() {

  if (Biblio.mouseOverButton() && Biblio.enabled) {
    pantalla = PANTALLA.BIBLIO;
  } else if (Perfil.mouseOverButton() && Perfil.enabled) {
    pantalla = PANTALLA.PERFIL;
  } else if (Perfil1.mouseOverButton() && Perfil1.enabled) {
    pantalla = PANTALLA.PERFIL;
  }else if (Biblio1.mouseOverButton() && Biblio1.enabled) {
    pantalla = PANTALLA.BIBLIO;
  }else if (Leido.mouseOverButton() && Leido.enabled) {
    pantalla = PANTALLA.NUEVO1;
  }else if (Empezar.mouseOverButton() && Empezar.enabled) {
    pantalla = PANTALLA.EMPEZAR;
  }else if (MiLista.mouseOverButton() && MiLista.enabled) {
    pantalla = PANTALLA.NUEVO2;
  }else if (Pendientes.mouseOverButton() && Pendientes.enabled) {
    pantalla = PANTALLA.NUEVO2;
  }else if (Iniciar1.mouseOverButton() && Iniciar1.enabled) {
    pantalla = PANTALLA.ESTTOPS;
  }else if (Iniciar2.mouseOverButton() && Iniciar2.enabled) {
    pantalla = PANTALLA.ESTRETOS;
  }else if (Ver1.mouseOverButton() && Ver1.enabled) {
    pantalla = PANTALLA.TOPS;
  }else if (Ver2.mouseOverButton() && Ver2.enabled) {
    pantalla = PANTALLA.RETOS;
  }
}
