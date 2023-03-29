// Component Camp de Text

class TextTimeField {
  
  // Propiedades del campo de texto
  float x, y, h, w;
  
  // Colores
  color bgColor = color(255);
  color fgColor = color(getColorAt(1));
  color selectedColor = color(getColorAt(4));
  color borderColor = color(getColorAt(0));
  int borderWeight = 2;
  
  // Texto del campo
  String text = "";
  float textSize = midaParagraf;
  
  String labelText="";

  boolean selected = false;
   
  // Constructor
  TextTimeField(String lt, float x, float y, float w,float h) {
      this.labelText = lt;
      this.x = x; this.y = y; 
      this.w = w; this.h = h;
   }
   
  String getValue(){
   return this.text;
 }
  
  
  // Dibujar el Campo de Texto
  void display() {

      if (selected) {
         fill(selectedColor);
      } else {
         fill(bgColor);
      }
      
      strokeWeight(borderWeight);
      stroke(borderColor);
      rect(x, y, w, h, 5);
      
      fill(fgColor);
      textSize(textSize); textAlign(CENTER);
      text(text, x + w/2, y + textSize +5);
      
      fill(133, 77, 39); textAlign(CENTER);
      text(labelText, x + w/2, y - textSize/2);
   }
   
   // Añadir/quitar el texto que se teclea
   void keyPressed(char key, int keyCode) {
      if (selected) {
         if (keyCode == (int)BACKSPACE) {
            removeText();
         } else if (keyCode == 32) {
            addText(' '); // SPACE
         } else {
            
           boolean isKeyNumber = (key >= '0' && key <= '9');
      
           if (isKeyNumber || key=='-') {
               addText(key);
           }
         }
      }
   }
   
   // Añadir la letra c al final del texto
   void addText(char c) {
      if (this.text.length()<3) {
         this.text += c;
      }
   }
   
   // Quitar la última lletra del texto
   void removeText() {
      if (this.text.length()> 0) {
         text = text.substring(0, text.length() - 1);
      }
   }

   // Indicar si el ratón esta sobre el campo de texto
   boolean mouseOverTextField() {
      if (mouseX >= this.x && mouseX <= this.x + this.w) {
         if (mouseY >= this.y && mouseY <= this.y + this.h) {
            return true;
         }
      }
      return false;
   }
   
   // Seleccionar el campo de texto si pulsamos encima  
   //  Deseleccionar el campo de texto si pulsamos a fuera
   void isPressed() {
      if (mouseOverTextField()) {
         selected = true;
      } else {
         selected = false;
      }
   }
}
