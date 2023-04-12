void setup() {
  // Dimensiones de la App
  fullScreen();
  textAlign(CENTER);
  
  connexioBBDD();
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
  case NUEVOLEIDO:
    dibujaNuevoLibro();
    break;
  case EMPEZAR:
    dibujarEmpezarLeer();
    break;
  case NUEVOCOMPRADO:
    dibujaAñadirLibro();
    break;
  case NUEVOLISTA:
  dibujaAñadirALaLista();
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
  case MILISTA:
    verLibrosPendientes ();
    break;
  case COMPRAR:
    verMiLista ();
    break;
  case ACTIVOS:
    librosActivos();
    break;
  case LIBRO:
    l1.displayInformacion();
    break;
  }
  
  


 /* String infoPantalla= pantalla.ordinal()+")"+pantalla.name();
  fill(0);
  text(infoPantalla, width/2, height/2);
  */
}
