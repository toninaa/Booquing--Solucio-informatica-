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
   float imgW = 500; 
   float imgH = 700;
   image(img, 50, 100, imgW, imgH); 
    
   
 // titol 
 fill(115, 135, 123); textSize(35); textAlign(LEFT);
 text(titulo, width/2+50, 100);
 
 // autor
 fill (133, 77, 39); textSize(25);textAlign(LEFT);
 text(autor, width/2-130, 200);
 
  // editorial
 fill (133, 77, 39); textSize(25);textAlign(LEFT);
 text(editorial, width/2-130, 300);
 
  // genero
 fill (133, 77, 39); textSize(25);textAlign(LEFT);
 text(genero, width/2-130, 400);
 
  // valoracion
 fill (133, 77, 39); textSize(25);textAlign(LEFT);
 text(valoracion, width/2-130, 600, 350, 200);
 cbl1.display();
 
 // recomendaciones 
  fill (133, 77, 39); textSize(35);textAlign(LEFT);
 text("Recomendaciones", width/2+325, 250);
 fill(255); stroke(0); strokeWeight(1); 
 rect(width/2+300, 300, 120,150);
 rect(width/2+500, 300, 120,150);
 rect(width/2+300, 500, 120,150);
 rect(width/2+500, 500, 120,150);
 

 popStyle(); 
 
 }
}
