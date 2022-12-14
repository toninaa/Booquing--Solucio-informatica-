//  información de las Medias de la App

// URL de la carpeta donde estan las imagenes 
String URL_IMGS = "imgs/";

// Array de imatges (JPG, PNG, GIF)
PImage[] imgs;
PImage[] imgPortada;
PImage[] imgTrofeos; 
  
// Estableix les imatges de l'App
void setMedias(){
    this.imgs = new PImage[26];
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
    this.imgs[24] = loadImage(URL_IMGS+"/starON.png");
    this.imgs[25] = loadImage(URL_IMGS+"/starOFF.png");
      
}

void setTrofeos(){
  this.imgTrofeos = new PImage[7]; 
  this.imgTrofeos[0] = loadImage(URL_IMGS+"/trofeo6.png "); 
    this.imgTrofeos[1] = loadImage(URL_IMGS+"/trofeo0.png");
    this.imgTrofeos[2] = loadImage(URL_IMGS+"/trofeo1.png");
    this.imgTrofeos[3] = loadImage(URL_IMGS+"/trofeo2.png");
    this.imgTrofeos[4] = loadImage(URL_IMGS+"/trofeo3.png");
    this.imgTrofeos[5] = loadImage(URL_IMGS+"/trofeo4.png");
    this.imgTrofeos[6] = loadImage(URL_IMGS+"/trofeo5.png");
  
}

void setImages(){
    this.imgPortada = new PImage[9];
    this.imgPortada[0] = loadImage(URL_IMGS+"/portada00.jpg");
    this.imgPortada[1] = loadImage(URL_IMGS+"/portada01.jpg");
    this.imgPortada[2] = loadImage(URL_IMGS+"/portada02.jpg");
    this.imgPortada[3] = loadImage(URL_IMGS+"/portada03.jpg");
    this.imgPortada[4] = loadImage(URL_IMGS+"/portada04.jpg");
    this.imgPortada[5] = loadImage(URL_IMGS+"/portada05.jpg");
    this.imgPortada[6] = loadImage(URL_IMGS+"/portada06.jpg");
    this.imgPortada[7] = loadImage(URL_IMGS+"/portada07.jpg");
    this.imgPortada[8] = loadImage(URL_IMGS+"/portada08.jpg");  
}
  
// Getter del número d'imatges
int getNumImatges(){
  return this.imgs.length;
}
  
// Getter de la imatge del logo
PImage getLogo(){
  return  this.imgs[0];
}
  
// Getter de la imatge del banner
PImage getBanner(){
  return  this.imgs[1];
}
  
// Getter de la imatge de la icona
PImage getIcon(){
  return  this.imgs[2];
}
  
// Getter de la imatge i-èssima
PImage getImgAt(int i){
  return this.imgs[i];
}

PImage getImgCheck0(int i){
  return this.imgs[i];
}

PImage getImgCheck1(int i){
  return this.imgs[i];
}

  
// Dibuixa el logo
void displayLogo(float x, float y, float w, float h){    
    image(getLogo(), x, y, w, h);
}

// Dibuixa la Icona
void displayIcon(float x, float y, float w, float h){    
    image(getIcon(), x, y, w, h);
}

// Dibuixa el Banner
void displayBanner(float x, float y, float w, float h){    
    image(getBanner(), x, y, w, h);
}
  
// Dibuixa la imatge i-èssima
void displayImg(int i, float x, float y, float w, float h){    
    image(getImgAt(i), x, y, w, h);
}
