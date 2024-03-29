// Fitxer amb la informació dels Fonts de l'App
String URL_TIPOGRAFIAS = "TIPOGRAFIAS/";

// Array de tipografies
PFont[] fuentes;

// Estableix les fonts de l'App
void setFonts() {
  this.fuentes = new PFont[6];
  this.fuentes[0] = createFont(URL_TIPOGRAFIAS+"Bright DEMO.otf", midaTitol);
  this.fuentes[1] = createFont(URL_TIPOGRAFIAS+"Bright DEMO.otf", midaSubtitol );
  this.fuentes[2] = createFont(URL_TIPOGRAFIAS+"Kiona-Regular.ttf", midaSubtitol);
  this.fuentes[3] = createFont(URL_TIPOGRAFIAS+"Kiona-Regular.ttf", midaTitol);
  this.fuentes[4] = createFont(URL_TIPOGRAFIAS+"Kiona-Regular.ttf", midaParagraf);
  this.fuentes[5] = createFont(URL_TIPOGRAFIAS+"textoUsuario.ttf", midaParagraf);
}

// Getter del numero de fuentes
int getNumFonts() {
  return this.fuentes.length;
}

// Getter de la fuente primaria
PFont getFirstFont() {
  return  this.fuentes[0];
}

// Getter del fuente secundaria
PFont getSecondFont() {
  return  this.fuentes[1];
}

// Getter del la fuente terciaria
PFont getThirdFont() {
  return  this.fuentes[2];
}


// Getter de la fuente i-èssima
PFont getFontAt(int i) {
  return this.fuentes[i];
}
