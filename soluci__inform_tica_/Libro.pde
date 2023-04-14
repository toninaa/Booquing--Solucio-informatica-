class Libro {
  // propiedades
  PImage img;
  String titulo, autor, editorial, genero, isbn, diaInici, diaFi, estado, Img, ad, ranking, valoracion;
  boolean isSelected = false;

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
    this.genero = info[9];
    this.ad = info[10]; 
    this.autor = info [11];  
  }

  // setters
  void setImage(PImage img) {
    this.img = img;
  }

//display informacion libro  
  void displayInformacion() {
    pushStyle();

    // imagen desciptiva
  //  float imgW = libroWidth;
  //  float imgH = libroHeight;
    //image(img, 50, 300, imgW, imgH);


    // titol
    fill(115, 135, 123);
    textAlign(LEFT);
    textFont(getFontAt(1));
    text(titulo, 200, 300);

    // autor
    fill(133, 77, 39);
    textSize(25);
    textAlign(LEFT);
    textFont(getFontAt(4));
    text(autor, 200, 400);

    // editorial
    text(editorial, 200, 500);

    // genero
    text(genero, 200, 600);
    
    // valoracion
    //text(valoracion, 500, 300, 350, 200);

    // ranquing
    text(ranking, 500, 400, 350, 200);

    popStyle();
  }
}
