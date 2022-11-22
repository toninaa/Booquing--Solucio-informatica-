//  información de las Medias de la App

// URL de la carpeta donde estan las imagenes 
String URL_IMGS = "imgs/";

// Array de imatges (JPG, PNG, GIF)
PImage[] imgs;
  
// Estableix les imatges de l'App
void setMedias(){
    this.imgs = new PImage[7];
    this.imgs[0] = loadImage(URL_IMGS+"/logo1.png");
    this.imgs[1] = loadImage(URL_IMGS+"/trofeo0.png");
    this.imgs[2] = loadImage(URL_IMGS+"/estanteria.png");
    this.imgs[3] = loadImage(URL_IMGS+"/trofeo1.png");
    this.imgs[4] = loadImage(URL_IMGS+"/trofeo2.png");
    this.imgs[5] = loadImage(URL_IMGS+"/libro1.png");
    this.imgs[6] = loadImage(URL_IMGS+"/libro2.png");
      
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
