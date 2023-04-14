//  información de las Medias de la App

// URL de la carpeta donde estan las imagenes
String URL_IMGS = "imgs/";
String URL_STARS = "stars/";

// Array de imagenes (JPG, PNG, GIF)
String titulo = "";
PImage img;
PImage[] imgs;
PImage[] imgPortada;
PImage[] imgTrofeos;

// Establecer las imagenes de la App
void setMedias() {
  this.imgs = new PImage[34];
  this.imgs[0] = loadImage(URL_IMGS+"/logo1.png");
  this.imgs[1] = loadImage(URL_IMGS+"/trofeo0.png");
  this.imgs[2] = loadImage(URL_IMGS+"/estanteria.png");
  this.imgs[3] = loadImage(URL_IMGS+"/trofeo1.png");
  this.imgs[4] = loadImage(URL_IMGS+"/trofeo2.png");
  this.imgs[5] = loadImage(URL_IMGS+"/trofeo3.png");
  this.imgs[6] = loadImage(URL_IMGS+"/trofeo4.png");
  this.imgs[7] = loadImage(URL_IMGS+"/trofeo5.png");
  this.imgs[8] = loadImage(URL_IMGS+"/trofeo6.png");
  this.imgs[9] = loadImage(URL_IMGS+"/libro1.png");
  this.imgs[10] = loadImage(URL_IMGS+"/libro2.png");
  this.imgs[11] = loadImage(URL_IMGS+"/checkbox1.png");
  this.imgs[12] = loadImage(URL_IMGS+"/checkbox0.png");
  this.imgs[13] = loadImage(URL_IMGS+"/mes.png");
  this.imgs[14] = loadImage(URL_IMGS+"/menys.png");
  this.imgs[15] = loadImage(URL_IMGS+"/portada00.jpg");
  this.imgs[16] = loadImage(URL_IMGS+"/portada01.jpg");
  this.imgs[17] = loadImage(URL_IMGS+"/portada02.jpg");
  this.imgs[18] = loadImage(URL_IMGS+"/portada03.jpg");
  this.imgs[19] = loadImage(URL_IMGS+"/portada04.jpg");
  this.imgs[20] = loadImage(URL_IMGS+"/portada05.jpg");
  this.imgs[21] = loadImage(URL_IMGS+"/portada06.jpg");
  this.imgs[22] = loadImage(URL_IMGS+"/portada07.jpg");
  this.imgs[23] = loadImage(URL_IMGS+"/portada08.jpg");
  this.imgs[24] = loadImage(URL_IMGS+"/portada10.jpg");
  this.imgs[25] = loadImage(URL_IMGS+"/ON.png");
  this.imgs[26] = loadImage(URL_IMGS+"/OFF.png");
  this.imgs[27]= loadImage(URL_IMGS+"/portada13.jpg");
  this.imgs[28]= loadImage(URL_IMGS+"/portada11.jpg");
  this.imgs[29]= loadImage(URL_IMGS+"/portada12.jpg");
  this.imgs[30]= loadImage(URL_IMGS+"/portada14.jpg");
  this.imgs[31]= loadImage(URL_IMGS+"/portada15.jpg");
  this.imgs[32]= loadImage(URL_IMGS+"/portada16.jpg");
  this.imgs[33]= loadImage(URL_IMGS+"/portada17.jpg");
  
}
// array para el carrousel de trofeos
void setTrofeos() {
  this.imgTrofeos = new PImage[7];
  this.imgTrofeos[0] = loadImage(URL_IMGS+"/trofeo6.png ");
  this.imgTrofeos[1] = loadImage(URL_IMGS+"/trofeo0.png");
  this.imgTrofeos[2] = loadImage(URL_IMGS+"/trofeo1.png");
  this.imgTrofeos[3] = loadImage(URL_IMGS+"/trofeo2.png");
  this.imgTrofeos[4] = loadImage(URL_IMGS+"/trofeo3.png");
  this.imgTrofeos[5] = loadImage(URL_IMGS+"/trofeo4.png");
  this.imgTrofeos[6] = loadImage(URL_IMGS+"/trofeo5.png");
}
// array para el carrousel de libros no leidos
void setImages() {
  this.imgPortada = new PImage[9];
  this.imgPortada[0] = loadImage(URL_IMGS+"/portada00.jpg");
  this.imgPortada[1] = loadImage(URL_IMGS+"/portada01.jpg");
  this.imgPortada[2] = loadImage(URL_IMGS+"/portada02.jpg");
  this.imgPortada[3] = loadImage(URL_IMGS+"/portada03.jpg");
  this.imgPortada[4] = loadImage(URL_IMGS+"/portada04.jpg");
  this.imgPortada[5] = loadImage(URL_IMGS+"/portada05.jpg");
  this.imgPortada[6] = loadImage(URL_IMGS+"/portada06.jpg");
  this.imgPortada[7] = loadImage(URL_IMGS+"/portada07.jpg");
  this.imgPortada[8] = loadImage(URL_IMGS+"/portada09.jpg");
  
}

//array para el carrousel de libros leidos
void setPortadas() {
  this.imgPortada = new PImage[8];
  this.imgPortada[0] = loadImage(URL_IMGS+"/portada10.jpg");
  this.imgPortada[1] = loadImage(URL_IMGS+"/portada11.jpg");
  this.imgPortada[2] = loadImage(URL_IMGS+"/portada12.jpg");
  this.imgPortada[3] = loadImage(URL_IMGS+"/portada13.jpg");
  this.imgPortada[4] = loadImage(URL_IMGS+"/portada14.jpg");
  this.imgPortada[5] = loadImage(URL_IMGS+"/portada15.jpg");
  this.imgPortada[6] = loadImage(URL_IMGS+"/portada16.jpg");
  this.imgPortada[7] = loadImage(URL_IMGS+"/portada17.jpg");
 
}



// Getter del número de imagenes
int getNumImatges() {
  return this.imgs.length;
}

// Getter de la imagen del logo
PImage getLogo() {
  return  this.imgs[0];
}


// Getter de la imagen i-esima
PImage getImgAt(int i) {
  return this.imgs[i];
}

PImage getImgCheck0(int i) {
  return this.imgs[i];
}

PImage getImgCheck1(int i) {
  return this.imgs[i];
}


// Dibujar el logo
void displayLogo(float x, float y, float w, float h) {
  image(getLogo(), x, y, w, h);
}

// Dibujar la imagen i-esima
void displayImg(int i, float x, float y, float w, float h) {
  image(getImgAt(i), x, y, w, h);
}
