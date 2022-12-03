
class Select {
  
   
  float x, y, w, h;          // Posició i dimensions
  String[] texts;            // Valors possibles
  String selectedValue;      // Valor Seleccionat
  
  boolean collapsed = true;  // Plegat / Desplegat
  boolean enabled;           // Abilitat / desabilitat
  
  float lineSpace = 7;      // Espai entre línies
  
 // Constructor 
  Select(String[] texts, float x, float y, float w, float h){
    
    this.texts = texts;
    this.selectedValue = "";
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.enabled = true;
    this.collapsed = true;
  }
  
  
  void setEnabled(boolean b){
   this.enabled = b;
 }
 
  void display(){
    pushStyle();
    stroke(231, 227, 147); strokeWeight(1); fill(255);
    rect(x, y, w, h);
    
    fill(231, 227, 147);
    rect(x + w - 30, y, 30, h);
    
    fill(133, 77, 39); stroke(133, 77, 39);
    triangle(x + w - 25, y+5, x + w - 15, y + 25, x + w - 5 , y+5);
    
    fill(133, 77, 39); textSize(midaParagraf);
    textFont(getFontAt(5));
    textAlign(LEFT); 
    text(selectedValue, x + 5, y + 30);
    
    if(!this.collapsed){
      
      fill(255); stroke(231, 227, 147);
      rect(x, y+h, w, (h + lineSpace)*texts.length);
      
      for(int i=0; i<texts.length; i++){
        
        if(i== clickedOption()){
          fill(231, 227, 147); noStroke();
          rect(x+4, y+4 + h + (h + lineSpace)*i - 2, w -8, h + lineSpace - 8);
        }
        
        fill(133, 77, 39);
        textAlign(LEFT); 
        textFont(getFontAt(5)); 
        text(texts[i], x + 5, y + h + 25 + (h + lineSpace)*i);
      }
    }
    popStyle();
  }
  
  void setCollapsed(boolean b){
    this.collapsed = b;
  }
  
  void toggle(){
    this.collapsed = !this.collapsed;
  }
  
  
  void update(){
    int option = clickedOption();
    selectedValue = texts[option];
  }
  
 // Indica si el cursor està sobre el select
 boolean mouseOverSelect(){
   if(this.collapsed){
     return (mouseX >= x) && 
            (mouseX <= x + w) && 
            (mouseY >= y) && 
            (mouseY <= y + h); 
   }
   else {
     return (mouseX>= x) && 
            (mouseX<= x + w) && 
            (mouseY>= y) && 
            (mouseY<= y + h + (h + lineSpace)*texts.length); 
   }
 }
 
 int clickedOption(){
   int i = (int)map(mouseY, y + h, y + h + (h + lineSpace)*texts.length, 
                            0, texts.length);
   return i;
 }
  
}
