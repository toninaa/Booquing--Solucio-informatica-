class PopUp {
  
  // Dimensiones
  float x, y, w, h;
  
 // Propiedades
 PImage img;
 String title;
 String message;
 
 Button Aceptar;
 float buttonW = 150;
 float buttonH = 50;
 
 boolean visible = true;
 boolean enabled= false; 
 
 // Constructor
 PopUp(String title, String message, float x, float y, float w, float h){
   this.title = title;
   this.message = message;
   this.x = x; this.y = y; 
   this.w = w; this.h = h;
   this.Aceptar = new Button("Acceptar", width/2-70, height/2+50, 
                                         buttonW, buttonH);
 }
 
 //Setters
 
 void setEnabled(boolean b){
   this.enabled = b;
 }
 
 void setImage(PImage img){
   this.img = img;
 }
 
 void setTexts(String title, String message){
   this.title = title;
   this.message = message;
 }
 
 
 // Dibujar el PopUp
 
 void display(){
   
    
   if(this.enabled){
     float b = 40;
     
     pushStyle();
     
     // Rectangulo
     rectMode(CENTER); 
     stroke(133, 77, 39); strokeWeight(2);fill(244, 201, 93);
     rect(x, y, w, h, b/2);
     
     line(x-275, y + 2*b-120 , x+w-275, y + 2*b-120);
     
     // Título
     fill(0); textSize(35); textAlign(CENTER);
     text(title, width/2-140, height/2-70);
     
     // Mensage
     fill(0);textSize(25); textAlign(CENTER);
     text(message, width/2, height/2+20);
      popStyle();
     // Botón para Acceptar
     Aceptar.display1();
   
  
   }
 }
 
  
}
