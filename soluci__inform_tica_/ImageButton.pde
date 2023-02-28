// Classe Botón

class ImageButton {
  
 // Propiedades de un botón:
 float x, y, w, h;  // Posición y dimensiones
 
 PImage img,imgOver, imgDisabled;  // Imagenes del botón
 
 boolean enabled;   // Abilitado / desabilitado
 boolean selected = false;
 
 //  Constructor
 ImageButton(PImage[] imgs, float x, float y, float w, float h){
   this.img = imgs[1];
   this.imgOver = imgs[0];
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.enabled = true;
 }
 
 // Setters
 
 void setEnabled(boolean b){
   this.enabled = b;
 }
 
 
 // Dibujar el botón
 void display(){
   
   if(!enabled){
     imageMode(CORNER);
     image(imgDisabled, this.x, this.y, this.w, this.h);
   }
   else if(mouseOverButton()){
     imageMode(CORNER);
     image(imgOver, this.x, this.y, this.w, this.h);
   }
   else{
     imageMode(CORNER);
     image(img, this.x, this.y, this.w, this.h);
   }
   
 }
 
 
 // Indica si el cursor esta sobre el botón
 boolean mouseOverButton(){
   return (mouseX >= this.x) && 
          (mouseX<=this.x + this.w) && 
          (mouseY>= this.y) && 
          (mouseY<= this.y + this.h); 
 }
 
  void isPressed() {
      if (mouseOverButton()) {
         selected = true;
  
      } else {
         selected = false;
      }
   }
  
}
