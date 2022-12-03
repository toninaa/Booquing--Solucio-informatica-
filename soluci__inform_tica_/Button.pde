// Clase Botón

class Button {
  
 // Propiedades del botón:
 float x, y, w, h;  // Posición y dimensiones
 
 // Colores de contorno, relleno, activo y desactivado
 color fillColor1, strokeColor, fillColor2,fillColor3 ; 
 color fillColorOver1, fillColorOver2, fillColorOver3, fillColorDisabled;
 
 String textBoto;  // Texto
 boolean enabled;  // Activado / desactivado 
 
 // Mètode Constructor
 Button(String text, float x, float y, float w, float h){
   this.textBoto = text;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.enabled = true;
   fillColor1 = color(115,135,123);
   fillColorOver1 = color(231,227,147);
   fillColor2 = color(155, 119, 93);
   fillColorOver2 = color(244, 201, 93);
   fillColor3 = color(244, 201, 93);
   fillColorOver3 = color(231, 227, 147);
   fillColorDisabled = color(150);
   //strokeColor = color(0);
 }
 
 // Setters
 
 void setEnabled(boolean b){
   this.enabled = b;
 }
 
 // Dibujar el botón
 void display1(){
   pushStyle();
   if(!enabled){
     fill(fillColorDisabled);  // Color desactivado
   }
   else if(mouseOverButton()){
     fill(fillColorOver1);      // Color con el ratón encima
   }
   else{
     fill(fillColor1);          // Color con el ratón afuera
   }
   noStroke(); strokeWeight(1);        //Color y ancho del contorno
   rect(this.x, this.y, this.w, this.h, 10);    // Rectangulo del botón
   
   // Texto (color, alineación y medida)
   fill(0); textAlign(CENTER); textSize(20);
   text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
   popStyle();
 }
 
  void display2(){
   pushStyle();
   if(!enabled){
     fill(fillColorDisabled);  // Color desactivado
   }
   else if(mouseOverButton()){
     fill(fillColorOver2);      // Color con el ratón encima
   }
   else{
     fill(fillColor2);          // Color con el ratón afuera
   }
   noStroke(); strokeWeight(1);        //Color y ancho del contorno
   rect(this.x, this.y, this.w, this.h, 10);    // Rectangulo del botón
   
   // Texto (color, alineación y medida)
   fill(0); textAlign(CENTER); textSize(20);
   text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
   popStyle();
 }
 
 void display3(){
   pushStyle();
   if(!enabled){
     fill(fillColorDisabled);  // Color desactivado
   }
   else if(mouseOverButton()){
     fill(fillColorOver3);      // Color con el ratón encima
   }
   else{
     fill(fillColor3);          // Color con el ratón afuera
   }
   noStroke(); strokeWeight(1);        //Color y ancho del contorno
   rect(this.x, this.y, this.w, this.h, 10);    // Rectangulo del botón
   
   // Texto (color, alineación y medida)
   fill(0); textAlign(CENTER); textSize(20);
   text(textBoto, this.x + this.w/2, this.y + this.h/2 + 10);
   popStyle();
 }
 
 // Indicar si el cursor està encima del botón
 boolean mouseOverButton(){
   return (mouseX >= this.x) && 
          (mouseX<=this.x + this.w) && 
          (mouseY>= this.y) && 
          (mouseY<= this.y + this.h); 
 }
  
}
