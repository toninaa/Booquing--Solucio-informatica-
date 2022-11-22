// Componente Campo de Texto

class TextField {
  
  // Propiedades del campo de texto
  int x, y, h, w;
  
  // Colores
  color bgColor = color(255);
  color fgColor = color(0, 0, 0);
  color selectedColor = color(231, 227, 147);
  color borderColor = color(0);
  int borderWeight = 1;
  
  // Texto del campo
  String text = "";
  int textLength = 0;
  int textSize = 24;

  boolean selected = false;
   
  // Constructor
  TextField(int x, int y, int w, int h) {
      this.x = x; this.y = y; this.w = w; this.h = h;
   }
  
  void setText(String t){
    this.text = t;   
  }
  
  // Dibuja el Campo de Texto
  void display() {
      pushStyle(); 
      if (selected) {
         fill(selectedColor);
      } else {
         fill(bgColor);
      }
      
      strokeWeight(borderWeight);
      stroke(borderColor);
      rect(x, y, w, h, 5);
      
      fill(fgColor);
      textFont(getFontAt(5)); 
      textSize(textSize);
      textAlign(LEFT); 
      text(text, x + 5, y + textSize);
      popStyle(); 
   }
   
   // Añade, quita el texto que se escribe
   void keyPressed(char key, int keyCode) {
      if (selected) {
         if (keyCode == (int)BACKSPACE) {
            removeText();
         } else if (keyCode == 32) {
            addText(' '); // SPACE
         } else {
            
           boolean isKeyCapitalLetter = (key >= 'A' && key <= 'Z');
           boolean isKeySmallLetter = (key >= 'a' && key <= 'z');
           boolean isKeyNumber = (key >= '0' && key <= '9');
      
           if (isKeyCapitalLetter || isKeySmallLetter || isKeyNumber) {
               addText(key);
           }
         }
      }
   }
   
   // Añadir una letra del final del texto 
   void addText(char c) {
      if (textWidth(this.text + c) < w) {
         this.text += c;
         textLength++;
      }
   }
   
   // Quitar la ultima letra del texto
   void removeText() {
      if (textLength - 1 >= 0) {
         text = text.substring(0, textLength - 1);
         textLength--;
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
   
   // Seleccionar el campp de texto si pulsamos sobre el 
   // Deseleccionar el campo de texto si pulsamos fuera
   void isPressed() {
      if (mouseOverTextField()) {
         selected = true;
         this.text = ""; 
      } else {
         selected = false;
      }
   }
  
   
}
