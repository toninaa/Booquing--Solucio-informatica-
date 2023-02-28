// Classe Counter

class Counter {
  
  // Valor del contador
  int value = 1;
  int minValue = 1, maxValue = 500;
  int stepValue = 1;
  
 // Propiedades de un counter:
 float x, y, w, h;  // Posición y dimensiones
 
 // Colores del relleno y del contorno 
 color fillColor, strokeColor;
 
 PImage iconaMes, iconaMenys;       // Iconos del botón

 boolean enabled;
 
 //  Constructor
 Counter(PImage iconaMes, PImage iconaMenys, float x, float y, float w, float h){
   this.iconaMes = iconaMes;
   this.iconaMenys = iconaMenys;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   fillColor = color(231, 227, 147);
   strokeColor = color(115, 135, 123);
 }
 
 // Setters
 
 void setInitialValue(int n){
   this.value = n;
 }
 
 void setValues(int minValue, int maxValue){ 
   this.minValue = minValue; 
   this.maxValue = maxValue;
 }
 
 void setEnabled(boolean b){
   this.enabled = b;
 }
 
 
 // Dibujar el botó
 void display(){
   
   fill(fillColor);                            // Color 
   stroke(strokeColor); strokeWeight(2);      //Color y anchura  del contorno
   rect(this.x, this.y, this.w + 2*this.h, this.h, 10);   // rectangulo del botón
   
   fill(133, 77, 39); textSize(25);
   text(value, this.x + 20, this.y + this.h/2 + 10);
   
   // Icono del botón
   fill(255); stroke(115, 135, 123);
   rect(this.x + this.w, this.y, this.h, this.h, 10);
   image(iconaMes,   this.x + this.w, this.y, this.h, this.h);
   rect(this.x + this.w + this.h, this.y, this.h, this.h, 10);
   image(iconaMenys, this.x + this.w + this.h, this.y, this.h, this.h);
 }
 
 boolean mouseOverButtons(){
   return mouseOverButtonMes() || mouseOverButtonMenys();
 }
 
 // Indica si el cursor esta sobre el botón Más
 boolean mouseOverButtonMes(){
   return mouseX >= this.x + this.w && mouseX <= this.x + this.w + this.h &&
          mouseY >= this.y && mouseY <= this.y + this.h; 
 }
 
 // Indica si el cursor esta sobre el botón Menos
 boolean mouseOverButtonMenys(){
   return mouseX >= this.x + this.w + this.h && mouseX <= this.x + this.w + 2*this.h &&
          mouseY >= this.y && mouseY <= this.y + this.h; 
 }
 
 // aumentar su valor 
 void increment(){
   this.value += stepValue;
   if(this.value>this.maxValue){
     this.value = this.maxValue;
   }
 }
 
 // disminuir su valor
 void decrement(){
   this.value -= stepValue;
   if(this.value<this.minValue){
     this.value = this.minValue;
   }
 }
 
 void update(){
   if(mouseOverButtonMes()){
     increment();
   }
   else if(mouseOverButtonMenys()){
     decrement();
   }
 }
  
}
