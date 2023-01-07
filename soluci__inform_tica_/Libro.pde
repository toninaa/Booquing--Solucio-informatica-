class Libro {
  
  // propiedades
  PImage img; 
  String titulo, autor, editorial, genero; 
  String valoracion; 
  
  
  // Constructor 
  
  Libro(String titulo, String autor, String editorial, String genero, String valoracion){
  this.titulo = titulo; 
  this.autor = autor; 
  this.editorial = editorial; 
  this.genero = genero; 
  this.valoracion = valoracion; 
  }
  
  Libro(String [] info){
  this.titulo = info[0];
  this.autor = info [1]; 
  this.editorial = info[2]; 
  this.genero = info[3]; 
  this.valoracion = info[4]; 
  }
  
  // setters
  
   void setImage(PImage img){
   this.img = img;
 }
 
 // dibuja Libro 
 
 void display(float x, float y, float w, float h, float b){
   
   pushStyle(); 
   
   // imagen desciptiva 
   float imgW = (w/3)-2*b; 
   float imgH = h-2*b; 
    if(img!=null){
     image(img, x + b, y + b, imgW, imgH);
     noFill(); rect(x + b, y + b, imgW, imgH);
   }
   else {
     fill(50);
     rect(x + b, y + b, imgW, imgH);
   }
 }
  
}
