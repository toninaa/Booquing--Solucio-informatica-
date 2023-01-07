// funcion para inicializar todos los componentes GUI
void setGUI() {
  initButtons();
  initTextField();
  initImageButton();
  initSelect();
  initCounter();
  initCalendari(); 
  initCarrouselBiblio();
  initCarrouselPerfil(); 
  setImages();
  initTimeField(); 
  
}

// TimeField 

void initTimeField(){
 tif = new TimeField(150, 500, TimeFieldX, TimeFieldY);
}

void enableTimeField(){
  tif.setEnabled(true);  
}

void disableTimeField(){
  tif.setEnabled(false);   
}



// carrousel 
void initCarrouselBiblio (){
String[] titulosEs1 = new String[9];

for(int i =0; i<titulosEs1.length; i++){
  titulosEs1[i] = URL_IMGS+"/portada0"+i+".jpg";
}
  es1 = new Carrousel(libroWidth+40, height/3-150, libroWidth+400-libroWidth+40, libroHeight, 4);
  es1.setImages(titulosEs1); es1.setButtons();
 
  es2 = new Carrousel(libroWidth+40, height/2, libroWidth+400-libroWidth+40, libroHeight, 4);
  es2.setImages(titulosEs1); es2.setButtons();
  
  es3 = new Carrousel(10.6*libroWidth+40, height/3, libroWidth+400-libroWidth+40, libroHeight, 4);
  es3.setImages(titulosEs1); es3.setButtons();
  
  es4 = new Carrousel(10.6*libroWidth+40, 2*height/3+20, libroWidth+400-libroWidth+40, libroHeight, 4);
  es4.setImages(titulosEs1); es4.setButtons();
  
  
}

void initCarrouselPerfil(){
  String[] trofeosEs5 = new String[7];

for(int i =0; i<trofeosEs5.length; i++){
  trofeosEs5[i] = URL_IMGS+"/trofeo"+i+".png";
}

 es5 = new Carrousel(libroWidth+40, 490, trofeoX+400-trofeoX+40, trofeoY, 3);
  es5.setImages(trofeosEs5); es5.setButtons();
  

}


// calendari 
void initCalendari (){ 
 c = new CalendariPlus(50,200,700,550);
}

void enableCalendario(){
  c.setEnabled(true);  
}

void disableCalendario(){
  c.setEnabled(false);   
}
 
// counters

void initCounter(){
  c1 = new Counter(getImgAt(13), getImgAt(14), 600, 500, selectX, selectY); 
  c2 = new Counter(getImgAt(13), getImgAt(14), 150, 500, selectX, selectY);
}

void enableCounterRetos(){
  c1.setEnabled(true);  
}

void enableCounterTops(){
  c2.setEnabled(true);  
}

void disableCounters(){
  c1.setEnabled(false);
  c2.setEnabled(false); 
}








// selects 
void initSelect(){
  String[] selectValues = {"Narrativa", "Drama", "Poesia", "Teatro", "Clásicos" };
  s1 = new Select(selectValues, 550, 350, selectX, selectY);
  s2 = new Select(selectValues, 1050, 500, selectX, selectY);
  s3 = new Select(selectValues, 550, 350, selectX, selectY);
  
  
}

void enableSelect1(){
  s1.setEnabled(true);  
}

void enableSelect2(){
  s2.setEnabled(true);  
}

void enableSelect3(){
  s3.setEnabled(true);  
}


void disableSelects(){
  s1.setEnabled(false);
  s2.setEnabled(false);
  s3.setEnabled(false);
    
}


// dibujar selects
void displaySelect1(){
  s1.display();
}

void displaySelect2(){
  s2.display();
}

void displaySelect3(){
  s3.display();
}



// TextField
void initTextField() {
  Titulo = new TextField(120, 330, CampoX, CampoY);
  Autor = new TextField(120, 380, CampoX, CampoY);
  Editorial = new TextField(120, 430, CampoX, CampoY);
  Valoracion = new TextField(950, 450, ValoracionX, ValoracionY);
  TituloTops = new TextField(150, 400, CampoX, CampoY); 
  Titulo.setText("título");
  Autor.setText("autor");
  Editorial.setText("editorial");
  TituloTops.setText("título");
}

void displayTextField () {
  Titulo.display();
  Autor.display();
  Editorial.display();
  Valoracion.display();
}

void displayTextField2 () {
  Titulo.display();
  Autor.display();
  Editorial.display();
}

void displayTextFieldTops () {
  TituloTops.display();

}



// botones

Button [] buttons;

Button Biblio, Biblio1, Perfil1, Perfil, Leido, Comprar, Quiero1, Quiero2, Pendientes, Pendientes1, MiLista1, 
MiLista, Empezar, Iniciar1, Iniciar2, Ver1, Ver2, Atras, Guardar, VerTodo, Calendario;

void initButtons (){ 
  buttons = new Button [20];
  buttons [0]= new Button ("Atrás", width-200, 50, LeidoX, LeidoY);
  buttons [1]= new Button ("BIBLIOTECA", width/3+225, height/2+100, bInX, bInY);
  buttons [2]= new Button ("Perfil", width/3, height/2+100, bInX, bInY);
  buttons [3]= new Button ("Biblioteca", 20, 10, bInX, bInY);
  buttons [4]= new Button ("Perfil", 280, 10, bInX, bInY);
  buttons [5]= new Button ("Iniciar", width-600, 450, LeidoX, LeidoY);
  buttons [6]= new Button ("Ver", width-350, 450, LeidoX, LeidoY);
  buttons [7]= new Button ("Iniciar", width-600, 700, LeidoX, LeidoY);
  buttons [8]= new Button ("Ver", width-350, 700, LeidoX, LeidoY);
  buttons [9]= new Button ("Leido", 100, 250, LeidoX, LeidoY);
  buttons [10]= new Button ("Comprado", 300, 250, LeidoX, LeidoY);
  buttons [11]= new Button ("Quiero", 500, 250, LeidoX, LeidoY);
  buttons [12]= new Button ("Empezar a leer", 150, 350, 3*LeidoX, LeidoY);
  buttons [13]= new Button ("Quiero", 500, 250, LeidoX, LeidoY);
  buttons [14]= new Button ("Mi Lista", 980, 650, LeidoX, LeidoY);
  buttons [15]= new Button ("Comprado", 1180, 650, LeidoX, LeidoY);
  buttons [16]= new Button ("Mi Lista", 1070, 400, LeidoX, LeidoY);
  buttons [17]= new Button ("Comprado", 1070, 500, LeidoX, LeidoY);
  buttons [18]= new Button ("Ver Todo", 900, 750, LeidoX, LeidoY);
  buttons [19]= new Button ("Calendario", 190, 500, calendarioX, calendarioY);



  Atras = buttons [0];
  Biblio =buttons [1];
  Perfil =buttons [2];
  Biblio1 =buttons [3];
  Perfil1 =buttons [4];
  Iniciar1 =buttons [5];
  Ver1 = buttons [6];
  Iniciar2 =buttons [7];
  Ver2 = buttons [8];
  Leido =buttons [9];
  Comprar =buttons [10];
  Quiero1 = buttons [11];
  Empezar = buttons [12];
    Quiero2 = buttons [13];
  MiLista1 = buttons [14];
  Pendientes1 = buttons [15];
  MiLista = buttons [16];
  Pendientes = buttons [17];
  VerTodo = buttons [18];
  Calendario = buttons [19];
  
  
}
// botones con imagenes
ImageButton [] imgButtons;

ImageButton Check0, Check1;

PImage[] getImagesButton(int n1, int n2){
  PImage[] imgsB0 = new PImage[2];
     imgsB0[0] = getImgAt(n1);
     imgsB0[1] = getImgAt(n2);
     return imgsB0;
}

void initImageButton () {
   imgButtons  = new ImageButton [2]; 
   imgButtons [0]= new ImageButton (getImagesButton(11,12), 820, 620, CheckX, CheckY);
   imgButtons [1]= new ImageButton (getImagesButton(11,12), 1225, 680, CheckX, CheckY);
   
  
}

void disableImageButton (){
  imgButtons[0].setEnabled(false);
  imgButtons[1].setEnabled(false);
}

void enableImageButton(){
  imgButtons[0].setEnabled(true);
  imgButtons[1].setEnabled(true);
}

void displayImageButton (){
  imgButtons[0].display();  
}
  
// función para desactivar los botones en las distintas pantallas
void disableButtons() {
  for (int i = 0; i<buttons.length; i++ ) {
    buttons[i].setEnabled(false);
  }
}
void enableButtonsIniciales () {
  Biblio.setEnabled(true);
  Perfil.setEnabled(true);
}

void enableButtonsMenu () {
  Biblio1.setEnabled(true);
  Perfil1.setEnabled(true);
}


void enableButtonsPerfil() {
  Leido.setEnabled(true);
  Comprar.setEnabled(true);
  Quiero1.setEnabled(true);
  Empezar.setEnabled(true);
  Ver1.setEnabled(true);
  Ver2.setEnabled(true);
  Iniciar1.setEnabled(true);
  Iniciar2.setEnabled(true);
}

void enableButtonsAñadir() {
  MiLista1.setEnabled(true);
  Pendientes1.setEnabled(true);
}

void enableButtonCalendario() {
  Calendario.setEnabled(true);
}

void enableButtonsNuevoLibro() {
  MiLista.setEnabled(true);
  Pendientes.setEnabled(true);
}

void enableButtonsAtras() {
  Atras.setEnabled(true);
 
}

void enableButtonVerTodo() {
  VerTodo.setEnabled(true);
 
}


void displayButtonsIniciales () {
  Biblio.display1();
  Perfil.display1();
}

void displayButtonsMenu() {
  Biblio1.display1();
  Perfil1.display1();
}

void displayButtonsPerfil () {
  Leido.display3();
  Comprar.display3();
  Quiero1.display3();
  Empezar.display3();
  Iniciar1.display3();
  Ver1.display3();
  Iniciar2.display3();
  Ver2.display3();
}

void displayButtonsAñadir (){  
  MiLista1.display1();
  Pendientes1.display1();
  
}

void displayButtonsNuevoLibro (){ 
  MiLista.display1();
  Pendientes.display1();  
}

void displayButtonsAtras (){ 
  Atras.display1();
  
}

void displayButtonVerTodo (){ 
  VerTodo.display1();
  
}
