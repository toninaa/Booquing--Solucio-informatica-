class PagRestantes {

  //Atributos
  float x, y, w, h;
  float porcentaje;

  // Constructor
  PagRestantes(float x, float y, float w, float h, float p) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.porcentaje = p;
  }
  void setPorcentaje(float p) {
    this.porcentaje = p;
  }

  void display() {
    fill(0);
    rect(x, y, w, h, 10);
    fill(getColorAt(0));
    rect(x, y, w*this.porcentaje, h, 10 );
  }
}
