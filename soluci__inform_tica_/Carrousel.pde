class Carrousel {
   
  // Dimensions del carrousel
  float x, y, w, h;
  float imgW;
  float margeH = 15;
  
  // 
  boolean enabled; 

  // Informació del carrousel
  int numTotalImatges, numImatgesVisibles;
  
  // Index imatge actual
  int currentImage;
  
  // Títols de les imatges
  String[] títulos;
  
  // Imatges del carrousel
  PImage[] imgs;
  
  // Botons del carrousel
  Button Move1, Move2, Move3, Move4, Move5, Move6;
  
  // Constructor
  Carrousel(float x, float y, float w, float h, int nv){
    this.x = x; this.y = y; this.w = w; this.h = h;
    this.numImatgesVisibles = nv; 
    this.currentImage = 0;
    this.imgW = (w - margeH*(nv-1)) / (float) nv;
    

  }
  
  // Setters
  
  void setEnabled(boolean b){
   this.enabled = b;
 }
 
  void setImages(String[] títulos){
    this.títulos = títulos;
    this.numTotalImatges = títulos.length;
    this.imgs = new PImage[títulos.length];
    for(int i=0; i<imgs.length; i++){
      imgs[i] = loadImage(títulos[i]);
    }
  }
  
  void setButtons(String img1, String img2){
    PImage imgPrev = loadImage(img1);
    Move1 = new Button("<", x, y + h/2, MoveX, MoveY);
    
    PImage imgNext = loadImage(img2);
    Move2 = new Button(">", x + w, y + h/2, MoveX, MoveY );
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
    
    fill(150); stroke(0);
    rect(x-5, y-5, w+10, h+10);
    
    for(int i=0; i<this.numImatgesVisibles; i++){
      
      int index = i + this.currentImage;
      float xPos = x + i*(this.imgW + this.margeH);
      
      // Imatge a mostrar
      PImage img = imgs[index];
      image(img, xPos, y, this.imgW, h);
      
      // Titol de la imatge
      fill(0); textAlign(CENTER); textSize(24);
      text(títulos[index], xPos + this.imgW/2, y + h + 50);
    
      // Número de la imatge
      fill(200, 100, 100); noStroke();
      ellipse(xPos + 30, y + 30, 50, 50);
      fill(0);
      text(index, xPos + 30, y + 40);
    }
    
    if(Move1!=null){
      Move1.display2();
    }
    if(Move2!=null){
      Move2.display2();
    }
  }
  
  void checkButtons(){
    if(Move1.mouseOverButton() && Move1.enabled){
      this.next();
    }
    else if(Move2.mouseOverButton() && Move2.enabled){
      this.prev();
    }
  }
  
  boolean checkCursor(){
    if(Move1.mouseOverButton() && Move1.enabled){
      return true;
    }
    else if(Move2.mouseOverButton() && Move2.enabled){
      return true;
    }
    return false;
  }

  
}
