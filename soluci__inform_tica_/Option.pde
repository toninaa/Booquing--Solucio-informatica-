// Classe Option

class Option {
  
 // Propiedades de un option:
 float x, y, w, h;  // Posición y dimensiones
 // Colores de contorno, relleno, activo y pasivo
 color fillColor, strokeColor;
 color fillColorOver, fillColorDisabled;
 String textBoto;  // Text
 boolean enabled;  // Abilitado / desabilitado
 
 //  Constructor
 Option(String text, float x, float y, float w, float h){
   this.textBoto = text;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.enabled = true;
   fillColor = color(255);
   fillColorOver = color(244, 201, 93);
   fillColorDisabled = color(150);
   strokeColor = color(231, 227, 147);
 }
 
 // Setters
 
 void setEnabled(boolean b){
   this.enabled = b;
 }
 
 // Dibuja el botón
 void display(){
   pushStyle();
   if(!enabled){
     fill(fillColorDisabled);  // Color desabilitado
   }
   else if(mouseOverButton()){
     fill(fillColorOver);      // Color cuando ratón esta encima
   }
   else{
     fill(fillColor);          // Color activo pero ratón fuera
   }
   noStroke();
   rect(this.x, this.y, this.w, this.h);    // Rectangulo de l'option
   
   // Texto (color, alineación y medida)
   fill(133, 77, 39); textAlign(CENTER); textSize(24);
   text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
   popStyle();
 }
 
 // Indica si el cursor està sobre l'option
 boolean mouseOverButton(){
   return (mouseX >= this.x) && 
          (mouseX<=this.x + this.w) && 
          (mouseY>= this.y) && 
          (mouseY<= this.y + this.h); 
 }
  
}
