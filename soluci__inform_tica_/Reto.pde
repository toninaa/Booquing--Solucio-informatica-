class Reto{

  //propiedades 
  PImage img; 
  String titulo; 
  
  //constructor
  
  Reto(String titulo){
  this.titulo= titulo; 
  }
  
   void setImage(PImage img){
   this.img = img;
 }
 
 //dibuja la card 
 void display(int x, int y, int w, int h, int b){
   
   pushStyle();
   
   // Rectangle inferior
   stroke(getColorAt(4)); strokeWeight(2); fill(255);
   rect(x, y, w, h, b/2);
   
    // imagen descriptiva
   float imgW = (w/2) - 2*b;
   float imgH = h - 2*b;
   if(img!=null){
     image(img, x + b, y + b, imgW, imgH);
     noFill(); rect(x + b, y + b, imgW, imgH);
   }
   else {
     fill(255); stroke(255);
     rect(x + b, y + b, imgW, imgH);
   }
 
 //titulo 
 fill(getColorAt(1)); textSize(25); textFont(getFontAt(5)); textAlign(CENTER);
 text(titulo, 800, 450);
 popStyle();
 }
 
}
