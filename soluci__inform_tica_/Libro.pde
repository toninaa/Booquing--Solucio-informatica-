class Libro {
  // propiedades
  PImage img;
  String titulo, autor, editorial, genero;
  String ranking;
  String valoracion;
  Button b;
  boolean isSelected = false;

  // Constructor
  Libro(String [] info, Button b) {
    this.titulo = info[0];
    this.autor = info [1];
    this.editorial = info[2];
    this.genero = info[3];
    this.ranking = info[4];
    this.valoracion = info[5];
    this.b = b;
  }

  // setters
  void setImage(PImage img) {
    this.img = img;
  }

  // dibuja Libro
  void displayLibro() {
    this.b.displayWithImg(this.img);
  }
  void displayInformacion() {
    pushStyle();

    // imagen desciptiva
    float imgW = 500;
    float imgH = 700;
    image(img, 50, 100, imgW, imgH);


    // titol
    fill(115, 135, 123);
    textSize(35);
    textAlign(LEFT);
    textFont(getFontAt(0));
    text(titulo, width/2+50, 100);

    // autor
    fill(133, 77, 39);
    textSize(25);
    textAlign(LEFT);
    textFont(getFontAt(4));
    text(autor, width/2-130, 200);

    // editorial

    text(editorial, width/2-130, 300);

    // genero

    text(genero, width/2-130, 400);

    // valoracion

    text(valoracion, width/2-130, 600, 350, 200);

    // ranquing

    text(ranking, width/2-130, 460, 350, 200);



    popStyle();
  }
}
