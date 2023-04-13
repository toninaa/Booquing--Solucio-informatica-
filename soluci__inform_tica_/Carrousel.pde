class Carrousel {

  // Dimensiones del carrousel
  float x, y;
  float w, h;
  float imgW;
  float margeH = 15;

  // Información del carrousel
  int numTotalImatges, numImatgesVisibles;

  //  imatgen actual
  int currentImage;

  // Imagenes del carrousel
  PImage[] imgs;
  PImage[] trofeos;

  // Botones del carrousel
  Button bPrev, bNext;

  // Constructor
  Carrousel(float x, float y, float w, float h, int nv) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.numImatgesVisibles = nv;
    this.currentImage = 0;
    this.imgW = (w - margeH*(nv-1)) / (float) nv;
  }

  // Setters
  void setImages(String[] noms) {
    this.numTotalImatges = noms.length;
    this.imgs = new PImage[noms.length];
    for (int i=0; i<imgs.length; i++) {
      imgs[i] = loadImage(noms[i]);
    }
  }
  
  void setPortadas(String[] noms) {
    this.numTotalImatges = noms.length;
    this.imgs = new PImage[noms.length];
    for (int i=0; i<imgs.length; i++) {
      imgs[i] = loadImage(noms[i]);
    }
  }

  void setTrofeos(String [] Trofeos) {
    this.numTotalImatges= trofeos.length;
    this.trofeos = new PImage[trofeos.length];
    for (int i=0; i<trofeos.length; i++) {
      trofeos[i] = loadImage(Trofeos[i]);
    }
  }

  void setButtons() {
    bPrev = new Button("<", this.x-60, y + h/2-20, MoveX, MoveY);
    bNext = new Button(">", this.x+this.w+20, y + h/2-20, MoveX, MoveY);
  }

  // ir hacia adelante
  void next() {
    if (this.currentImage<this.numTotalImatges - this.numImatgesVisibles) {
      this.currentImage++;
    }
  }

  // ir hacia atrás
  void prev() {
    if (this.currentImage>0) {
      this.currentImage--;
    }
  }


  // Dibujar el Mosaico
  void display() {
    imageMode(CORNER);

    for (int i=0; i<this.numImatgesVisibles; i++) {

      int index = i + this.currentImage;
      float xPos = x + i*(this.imgW + this.margeH);

      // Imagen a mostrar
      PImage img = imgs[index];
      image(img, xPos, y, this.imgW, h);
    }

    if (bNext!=null) {
      bNext.display1();
    }
    if (bPrev!=null) {
      bPrev.display1();
    }
  }

  void checkButtons() {
    if (bNext.mouseOverButton() && bNext.enabled) {
      this.next();
    } else if (bPrev.mouseOverButton() && bPrev.enabled) {
      this.prev();
    }
  }

  boolean checkCursor() {
    if (bNext.mouseOverButton() && bNext.enabled) {
      return true;
    } else if (bPrev.mouseOverButton() && bPrev.enabled) {
      return true;
    }
    return false;
  }
}
