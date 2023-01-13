class PagRestantes{
 
  //Atri
 
 float x, y, w, h;
 float portentaje;
 
 // Constructor
 PagRestantes(float x, float y, float w, float h, float p){
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.portentaje = p;
 }
 void setPorcentaje(float p){
   this.portentaje = p;
 }
 
 void disaply(){
   fill(0); 
   rect(x, y, w, h, 10);
   fill(getColorAt(0));
   rect(x, y, w*this.portentaje, h, 10 );
 }
}
