class Top {

  //propiedades 
  String titulo;
  String[] libros; 
  
  
  // Contrsuctor
  Top (String titulo, String []libros){
  this.titulo= titulo; 
  this.libros = libros; 
  }
  
  
  void displayTop(int x, int y, int w, int h){
    pushStyle();
    
    stroke(getColorAt(4)); strokeWeight(2); fill(255);
    rect(x, y, w, h);
    
    //titulo
   fill(getColorAt(1)); textSize(25); textAlign(LEFT);
   text(titulo, x+10, y/2+150);
   
   //libros 
   fill(133, 77, 39); textSize(25); textFont(getFontAt(5)); textAlign(LEFT);
   for(int i=0; i<libros.length; i++){
     
   text(libros[i], x+20, y+75 +i*25);
   }
   
     popStyle();
  }
}
