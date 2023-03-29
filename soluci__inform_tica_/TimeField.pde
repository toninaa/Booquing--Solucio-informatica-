// Componente Campo de Tiempo

class TimeField {
  
  // Propiedades del campo de tiempo
  int x, y, h, w;
  TextTimeField[] tf;
  boolean enabled;   // Abilitado / desabilitado
   
  // Constructor
   TimeField(int x, int y, int w, int h) {
      this.x = x; this.y = y; this.w = w; this.h = h;
      tf = new TextTimeField[3];
      tf[0] = new TextTimeField("Meses", x-10, y, w/3.1, h);
      tf[1] = new TextTimeField("Semanas", x + w/3, y, w/3.1, h);
      tf[2] = new TextTimeField("Dias", x + 2*w/3+10, y, w/3.1, h);
   }
  
  // Dibujar el Campo de Tiempo
  void display() {
      for(int i=0; i<tf.length; i++){
        tf[i].display();
      }
   }
   
 
   
   // Escritura en alguno de los Campo de Texto
   void keyPressed(char key, int keyCode) {
      for(int i=0; i<tf.length; i++){
        tf[i].keyPressed(key, keyCode);
      }
   }
   
   // Click sobre alguno de los campos de texto
   void isPressed() {
     for(int i=0; i<tf.length; i++){
        tf[i].isPressed();
      }
   }
  // función para Abilitar y desabilitar 
   void setEnabled(boolean b){
   this.enabled = b;
 }
 
   
}
