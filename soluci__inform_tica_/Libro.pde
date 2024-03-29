class Libro {
  // propiedades
  PImage img;
  String titulo, autor, editorial, genero, isbn, diaInici, diaFi, estado, Img, ad, ranking, valoracion;
  boolean isSelected, enabled = false;

  // Constructor
  Libro(String [] info) {
    this.isbn = info[0];
    this.titulo = info[1];
    this.diaInici = info [2];
    this.diaFi = info [3];
    this.ranking = info[4];
    this.valoracion = info[5];
    this.estado = info [6];
    this.editorial = info[7];
    this.Img = info [8];
    this.img = loadImage("imgs/"+this.Img);
    this.genero = info[9];
    this.ad = info[10]; 
    this.autor = info [11];  
  }

  // setters
  void setImage(PImage img) {
    this.img = img;
  }
  
  void setEnabled(boolean b) {
    this.enabled = b;
  }

//display informacion libro  
  void displayInformacion() {
    pushStyle();

    // imagen desciptiva
    float imgW = libroWidth*3;
    float imgH = libroHeight*3;
   if (this.img!=null) {
      image(this.img, 200, 300, imgW, imgH);
    }
    else {
      rect(50, 50, imgW, imgH);
    }


    // titol
    fill(115, 135, 123);
    textAlign(LEFT);
    textFont(getFontAt(4));
    text("Titulo:  "+titulo, 600, 350);

    // autor
    fill(133, 77, 39);
    textSize(25);
    textAlign(LEFT);
    textFont(getFontAt(4));
    text("Autor: "+autor, 600, 400);

    // editorial
    text("Editorial: "+editorial, 600, 450);

    // genero
    text("Genero: "+genero, 600, 500);
    
    // valoracion
    text("Valoracion: "+valoracion, 1100, 350);

    // ranquing
    text("Ranking: "+ranking+" estrellas",600, 550);
    
    //Dia inicio
    text("Dia Inicio: "+diaInici,600, 600);
    //Dia Fin
    text("Dia Fin: "+diaFi, 600, 650);
    
    //ISBN
    text("ISBN: "+isbn, 200, 700);
    
    //Adquisicion
    text("Adquisicion: "+ad, 600, 700);
    
    popStyle();
  }
}
