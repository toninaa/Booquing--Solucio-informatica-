class PopUp {
  
  // Dimensions
  float x, y, w, h;
  
 // Propietats
 PImage img;
 String title;
 String message;
 
 Button Aceptar;
 float buttonW = 150;
 float buttonH = 50;
 
 boolean visible = true;
 boolean enabled; 
 
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
 
 void setVisible(boolean b){
   this.visible = b;
   if(!this.visible){
     this.Aceptar.setEnabled(false);
   }
   else {
     this.Aceptar.setEnabled(true);
   }
 }
 
 // Dibuixa el PopUp
 
 void display(){
   
   if(this.visible){
     float b = 40;
     
     pushStyle();
     
     // Rectangle
     rectMode(CENTER); 
     stroke(133, 77, 39); strokeWeight(2);fill(244, 201, 93);
     rect(x, y, w, h, b/2);
     
     line(x-275, y + 2*b-120 , x+w-275, y + 2*b-120);
     
     // Títol
     fill(0); textSize(35); textAlign(CENTER);
     text(title, width/2-140, height/2-70);
     
     // Missatge
     fill(0);textSize(25); textAlign(CENTER);
     text(message, width/2, height/2+20);
      popStyle();
     // Botó d'Acceptar
     Aceptar.display1();
    
   }
 }
 
  
}
