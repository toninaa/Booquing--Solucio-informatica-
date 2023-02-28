
//  información de los Colores de la App
  
// Array de colores
color[] colors;
  
// Establecer colores de la app;
void setColors(){
    this.colors = new color[5];
    this.colors[0] = color(#73877B);
    this.colors[1] = color(#854D27);
    this.colors[2] = color(#DD7230);
    this.colors[3] = color(#F4C95D);
    this.colors[4] = color(#E7E393);
}
  
  // Getter del número de colores;
  int getNumColors(){
    return this.colors.length;
  }
  
  // Getter del color primario
  color getFirstColor(){
    return  this.colors[0];
  }
  
  // Getter del color secundario
  color getSecondColor(){
    return  this.colors[1];
  }
  
  // Getter del color terciario
  color getThirdColor(){
    return  this.colors[2];
  }
  
  // Getter del color i-esimo
  color getColorAt(int i){
    return this.colors[i];
  }
