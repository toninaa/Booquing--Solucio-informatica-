class Libro {
  
  // propiedades
  PImage img; 
  String titulo, autor, editorial, genero;
  String ranking; 
  String valoracion; 
  boolean isSelected = false;
  ImageButton = b; 
  // margenes entre textos 
  int dist = 130;
  
  // Constructor 
  
  Libro(String titulo, String autor, String editorial, String genero, String ranking, String valoracion,  ){
  this.titulo = titulo; 
  this.autor = autor; 
  this.editorial = editorial; 
  this.genero = genero; 
  this.ranking = ranking; 
  this.valoracion = valoracion; 
  }
  
  Libro(String [] info){
  this.titulo = info[0];
  this.autor = info [1]; 
  this.editorial = info[2]; 
  this.genero = info[3]; 
  this.ranking = info[4]; 
  this.valoracion = info[5]; 
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
    
   
 // titulo 
 fill(115, 135, 123); textSize(35); textAlign(LEFT); 
 getFontAt(1);
 text(titulo, width/2+50, 100);
 
 // autor
 fill(133, 77, 39); textSize(25); textAlign(LEFT); getFontAt(4);
 text(autor, width/2-dist, 200);
 
  // editorial
 text(editorial, width/2-dist, 300);
 
  // genero
 text(genero, width/2-dist, 400);
 
  // valoracion
 text(valoracion, width/2-dist, 600, 350, 200);
 
 // ranquing 
 text(ranking, width/2-dist, 460, 350, 200);
 
 // recomendaciones 
 text("Recomendaciones", width/2+325, 250);
 fill(255); stroke(0); strokeWeight(1); 
 rect(width/2+300, 300, 120,150);
 rect(width/2+500, 300, 120,150);
 rect(width/2+300, 500, 120,150);
 rect(width/2+500, 500, 120,150);
 

 popStyle(); 
 
 }
}
