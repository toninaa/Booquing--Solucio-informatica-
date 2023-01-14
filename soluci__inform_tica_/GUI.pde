
// Enumeracion de las pantallas de la app
enum PANTALLA {
  INICIO, BIBLIO, PERFIL, LEIDOS, ESTRETOS, ESTTOPS, NUEVO1, NUEVO2, MILISTA,
  COMPRAR, INFO, TOPS, RETOS, ACTIVOS, RETOSCON, INFOACTIVO, EMPEZAR
};

PANTALLA pantalla = PANTALLA.INICIO;

// creación de los diferentes compenentes 


TextField Titulo, TituloTops, Autor, Editorial, Valoracion, Buscar, Filtrar, Libro;

Select s1, s2, s3, s4, s5;

Counter cRetos, cTops;

CalendariPlus c;

Carrousel es1, es2, es3, es4, es5; 

TextField tf;

TimeField tif;

PopUp p;

CheckBoxStarList cbl1, cbl2;

PagRestantes Pg1, Pg2, Pg3, Pg4, Pg5, Pg6, Pg7;

// Strings de algunos componentes 

// texto del calendario 
String dataCalendari="";

// Textos del PopUp
String title = "Guardado";
String message = "Tu libro se ha guardado con èxito";

// Imatges de les opcions del checkboxstarlist
String[] stars = {"starON.png", "starOFF.png"};


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
  initPopUp(); 
  initCheckStars();
  initPagRestantes(); 
  
}

//PagRestantes 

void initPagRestantes (){
  Pg1 = new PagRestantes(70, 400, 50, 20, 5); 
  Pg2 = new PagRestantes(400, 400, 50, 20, 5); 
  Pg3 = new PagRestantes(70, 550, 50, 20, 5); 
  Pg4 = new PagRestantes(400, 550, 50, 20, 5); 
  Pg5 = new PagRestantes(100, 750, 50, 20, 5); 
  Pg6 = new PagRestantes(600, 750, 50, 20, 5); 
  Pg7 = new PagRestantes(1100, 750, 50, 20, 5);
}

 // checkboxstarlist
 void initCheckStars (){
  cbl1 = new CheckBoxStarList(5, stars, 100, height/2 - 100, 100, 100);
  cbl1.setCheckBoxStars(3);
  
  cbl2 = new CheckBoxStarList(5, stars, 100, height/2 - 100, 100, 100);
  cbl2.setCheckBoxStars(3);

 }
// PopUP
void initPopUp (){
  
  p = new PopUp(title, message, width/2, height/2, popW, popH);
   
}

void enablePopUp(){
  p.setEnabled(true);  
}

void disablePopUp(){
  p.setEnabled(false);   
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


// calendario 
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
  cRetos = new Counter(getImgAt(13), getImgAt(14), 600, 500, selectX, selectY); 
  cTops = new Counter(getImgAt(13), getImgAt(14), 150, 600, selectX, selectY);
}

void enableCounterRetos(){
  cRetos.setEnabled(true);  
}

void enableCounterTops(){
  cTops.setEnabled(true);  
}

void disableCounters(){
  cRetos.setEnabled(false);
  cTops.setEnabled(false); 
}


// selects 
void initSelect(){
  String[] selectValues = {"Narrativa", "Drama", "Poesia", "Teatro", "Clásicos" };
   String[] selectValoraciones = {"1", "2", "3", "4", "5" };
  s1 = new Select(selectValues, 550, 350, selectX, selectY);
  s2 = new Select(selectValues, 1050, 500, selectX, selectY);
  s3 = new Select(selectValues, 550, 350, selectX, selectY);
  s4 = new Select(selectValues, 70, 300, selectX, selectY);
  s5 = new Select(selectValoraciones, 70, 270, selectX, selectY);
  s1.setText("Generos");
  s2.setText("Generos");
  s3.setText("Generos");
  s4.setText("Generos");
  s5.setText("valoraciones");
  
  
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

void enableSelect4(){
  s4.setEnabled(true);  
}

void enableSelect5(){
  s5.setEnabled(true);  
}


void disableSelects(){
  s1.setEnabled(false);
  s2.setEnabled(false);
  s3.setEnabled(false);
  s4.setEnabled(false);
  s5.setEnabled(false);
    
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

void displaySelect4(){
  s4.display();
}

void displaySelect5(){
  s5.display();
}




// TextField
void initTextField() {
  Titulo = new TextField(120, 330, CampoX, CampoY);
  Autor = new TextField(120, 380, CampoX, CampoY);
  Editorial = new TextField(120, 430, CampoX, CampoY);
  Valoracion = new TextField(950, 450, ValoracionX, ValoracionY);
  TituloTops = new TextField(150, 450, CampoX, CampoY); 
  Buscar = new TextField(width/2-CampoX, 200, CampoX*2, CampoY);
  Filtrar = new TextField(width/2-CampoX+100, 200, CampoX*2, CampoY);
  Libro = new TextField(width/2-CampoX+100, 525, CampoX, CampoY);
  Titulo.setText("título");
  Autor.setText("autor");
  Editorial.setText("editorial");
  TituloTops.setText("título");
  Buscar.setText("buscar...");
  Filtrar.setText("buscar...");
  Libro.setText("libros");
  
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
  Libro.display();

}

void displayTextFieldBuscar (){
 Buscar.display(); 
}

void displayTextFieldFiltrar (){
 Filtrar.display(); 
}



// botones

Button [] buttons;

Button Biblio, Biblio1, Perfil1, Perfil, Leido, Comprar, Quiero1, Quiero2, Pendientes, Pendientes1, MiLista1, 
MiLista, Empezar, Iniciar1, Iniciar2, Ver1, Ver2, AtrasP, AtrasB, AtrasR, Guardar, VerTodo, Calendario, Aceptar, 
Leidos, Lista, ComprarB,
Actuales;

void initButtons (){ 
  buttons = new Button [26];
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
  buttons [16]= new Button ("Mi Lista", 1070, 600, LeidoX, LeidoY);
  buttons [17]= new Button ("Comprado", 1070, 500, LeidoX, LeidoY);
  buttons [18]= new Button ("Ver Todo", 930, 750, LeidoX, LeidoY);
  buttons [19]= new Button ("Calendario", 190, 490, calendarioX, calendarioY);
  buttons [20]= new Button ("Leidos", 450, height/3+40, LeidoX, LeidoY);
  buttons [21]= new Button ("Mi Lista", width/2+120, height/3+190, LeidoX, LeidoY);
  buttons [22]= new Button ("Comprar", 450, height/3+340, LeidoX, LeidoY);
  buttons [23]= new Button ("Leyendo", width/2+120, height/3+510, LeidoX, LeidoY);
  buttons [24]= new Button ("Atrás", width-200, 50, LeidoX, LeidoY);
  buttons [25]= new Button ("Atrás", width-200, 50, LeidoX, LeidoY);



  AtrasP = buttons [0];
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
  Leidos = buttons [20];
  Lista = buttons [21];
  ComprarB = buttons [22];
  Actuales = buttons [23];
  AtrasB = buttons [24];
  AtrasR = buttons [25];
  
  
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

void enableButtonsBiblioteca() {
  Leidos.setEnabled(true); 
  Lista.setEnabled(true); 
  ComprarB.setEnabled(true); 
  Actuales.setEnabled(true);
  
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

void enableButtonsAtrasPerfil() {
  AtrasP.setEnabled(true);
 
}

void enableButtonsAtrasBiblioteca() {
  AtrasB.setEnabled(true);
 
}

void enableButtonsAtrasRetos() {
  AtrasR.setEnabled(true);
 
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

void displayButtonsBiblioteca() {
  Leidos.display1();
  Lista.display1();
  ComprarB.display1();
  Actuales.display1(); 
  
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

void displayButtonsAtrasPerfil (){ 
  AtrasP.display1();
  
}

void displayButtonsAtrasBiblioteca (){ 
  AtrasB.display1();
  
}

void displayButtonsAtrasRetos (){ 
  AtrasR.display1();
  
}

void displayButtonVerTodo (){ 
  VerTodo.display1();
  
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
   imgButtons  = new ImageButton [3]; 
   imgButtons [0]= new ImageButton (getImagesButton(11,12), 820, 620, CheckX, CheckY);
   imgButtons [1]= new ImageButton (getImagesButton(11,12), 1225, 680, CheckX, CheckY);
   imgButtons [2]= new ImageButton (getImagesButton(11,12), 830, 680, CheckX, CheckY);
 
   
  
}

void disableImageButton (){
  imgButtons[0].setEnabled(false);
  imgButtons[1].setEnabled(false);
  imgButtons[2].setEnabled(false);
}

void enableImageButton(){
  imgButtons[0].setEnabled(true);
  imgButtons[1].setEnabled(true);
  imgButtons[2].setEnabled(true);
}

void displayImageButton (){
  imgButtons[0].display();  
}
