class Carrousel {
   
  // Dimensions del carrousel
  float x, y; 
  float w, h;
  float imgW;
  float margeH = 15;

  // Informació del carrousel
  int numTotalImatges, numImatgesVisibles;
  
  // Index imatge actual
  int currentImage;
  
  // Imatges del carrousel
  PImage[] imgs;
  PImage[] trofeos; 
  
  // Botons del carrousel
  Button bPrev, bNext;
  
  // Constructor
  Carrousel(float x, float y, float w, float h, int nv){
    this.x = x; this.y = y; this.w = w; this.h = h;
    this.numImatgesVisibles = nv; 
    this.currentImage = 0;
    this.imgW = (w - margeH*(nv-1)) / (float) nv;
    

  }
  
  // Setters
  
  void setImages(String[] noms){
    this.numTotalImatges = noms.length;
    this.imgs = new PImage[noms.length];
    for(int i=0; i<imgs.length; i++){
      imgs[i] = loadImage(noms[i]);
    }
  }
  
  void setTrofeos(String [] Trofeos){
  this.numTotalImatges= trofeos.length; 
  this.trofeos = new PImage[trofeos.length];
   for(int i=0; i<trofeos.length; i++){
      trofeos[i] = loadImage(Trofeos[i]);
    }
  
  }
  
  void setButtons(){
    bPrev = new Button("<", this.x-60, y + h/2-20, MoveX, MoveY);
    bNext = new Button(">", this.x+this.w+20, y + h/2-20, MoveX, MoveY);
  }
  
  void next(){
    if(this.currentImage<this.numTotalImatges - this.numImatgesVisibles){
      this.currentImage++;
    }
  }
  
  void prev(){
    if(this.currentImage>0){
      this.currentImage--;
    }
  }
  
  
  // Dibuixa el Mosaic
  void display(){
    imageMode(CORNER);
    
    for(int i=0; i<this.numImatgesVisibles; i++){
      
      int index = i + this.currentImage;
      float xPos = x + i*(this.imgW + this.margeH);
      
      // Imatge a mostrar
      PImage img = imgs[index];
      image(img, xPos, y, this.imgW, h);
    }
    
    if(bNext!=null){
      bNext.display2();
    }
    if(bPrev!=null){
      bPrev.display2();
    }
  }
  
  void checkButtons(){
    if(bNext.mouseOverButton() && bNext.enabled){
      this.next();
    }
    else if(bPrev.mouseOverButton() && bPrev.enabled){
      this.prev();
    }
  }
  
  boolean checkCursor(){
    if(bNext.mouseOverButton() && bNext.enabled){
      return true;
    }
    else if(bPrev.mouseOverButton() && bPrev.enabled){
      return true;
    }
    return false;
  }

  
}
