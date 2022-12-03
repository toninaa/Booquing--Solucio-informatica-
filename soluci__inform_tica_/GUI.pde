// funcion para inicializar todos los componentes GUI
void setGUI() {
  initButtons();
  initTextField();
  initImageButton(); 
}

// selects 
void initSelect(){
  String[] selectValues = {"Narrativa", "Drama", "Poesia", "Teatro", "Clásicos" };
  s1 = new Select(selectValues, 200, 500, selectX, selectY);
  
}
// dibujar selects
void displaySelect(){
  s1.display(); 
}


// TextField
void initTextField() {
  Titulo = new TextField(120, 330, CampoX, CampoY);
  Autor = new TextField(120, 380, CampoX, CampoY);
  Editorial = new TextField(120, 430, CampoX, CampoY);
  Valoracion = new TextField(950, 450, ValoracionX, ValoracionY);
  TituloTops = new TextField(200, 450, CampoX/2, CampoY); 
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

Button Biblio, Biblio1, Perfil1, Perfil, Move1, Move2, Move3, Move4, Move5, Move6, Move7, Move8, Move9, Move10, Leido, Comprar, Quiero, Pendientes, Pendientes1, MiLista1, MiLista, Empezar, Iniciar1, Iniciar2, Ver1, Ver2, Atras, Guardar, VerTodo;

void initButtons () {
  buttons = new Button [29];
  buttons [0]= new Button ("Atrás", width-200, 50, LeidoX, LeidoY);
  buttons [1]= new Button ("BIBLIOTECA", width/3+225, height/2+100, bInX, bInY);
  buttons [2]= new Button ("Perfil", width/3, height/2+100, bInX, bInY);
  buttons [3]= new Button ("Biblioteca", 20, 10, bInX, bInY);
  buttons [4]= new Button ("Perfil", 280, 10, bInX, bInY);
  buttons [5]= new Button ("Iniciar", width-600, 450, LeidoX, LeidoY);
  buttons [6]= new Button ("Ver", width-350, 450, LeidoX, LeidoY);
  buttons [7]= new Button ("Iniciar", width-600, 700, LeidoX, LeidoY);
  buttons [8]= new Button ("Ver", width-350, 700, LeidoX, LeidoY);
  buttons [9]= new Button (">", estanteWidth-90, height/2+50, MoveX, MoveY);
  buttons [10]= new Button ("<", 30, height/2+50, MoveX, MoveY);
  buttons [11]= new Button (">", estanteWidth-90, height/3-100, MoveX, MoveY);
  buttons [12]= new Button ("<", 30, height/3-100, MoveX, MoveY);
  buttons [13]= new Button (">", width-70, height/2-100, MoveX, MoveY);
  buttons [14]= new Button ("<", estanteWidth+90, height/2-100, MoveX, MoveY);
  buttons [15]= new Button (">", width-70, height/3+370, MoveX, MoveY);
  buttons [16]= new Button ("<", estanteWidth+90, height/3+370, MoveX, MoveY);
  buttons [17]= new Button (">", estanteWidth-90, 2*height/3, MoveX, MoveY);
  buttons [18]= new Button ("<", 30, 2*height/3, MoveX, MoveY);
  buttons [19]= new Button ("Leido", 100, 250, LeidoX, LeidoY);
  buttons [20]= new Button ("Comprado", 300, 250, LeidoX, LeidoY);
  buttons [21]= new Button ("Quiero", 500, 250, LeidoX, LeidoY);
  buttons [22]= new Button ("Empezar a leer", 150, 350, 3*LeidoX, LeidoY);
  buttons [23]= new Button ("Quiero", 500, 250, LeidoX, LeidoY);
  buttons [24]= new Button ("Mi Lista", 980, 650, LeidoX, LeidoY);
  buttons [25]= new Button ("Comprado", 1180, 650, LeidoX, LeidoY);
  buttons [26]= new Button ("Mi Lista", 1070, 400, LeidoX, LeidoY);
  buttons [27]= new Button ("Comprado", 1070, 500, LeidoX, LeidoY);
  buttons [28]= new Button ("Ver Todo", 900, 750, LeidoX, LeidoY);



  Atras = buttons [0];
  Biblio =buttons [1];
  Perfil =buttons [2];
  Biblio1 =buttons [3];
  Perfil1 =buttons [4];
  Iniciar1 =buttons [5];
  Ver1 = buttons [6];
  Iniciar2 =buttons [7];
  Ver2 = buttons [8];
  Move1 = buttons [9];
  Move2 = buttons [10];
  Move3 = buttons [11];
  Move4 = buttons [12];
  Move5 = buttons [13];
  Move6 = buttons [14];
  Move7 =buttons [15];
  Move8 = buttons [16];
  Move9 =buttons [17];
  Move10 = buttons [18];
  Leido =buttons [19];
  Comprar =buttons [20];
  Quiero = buttons [21];
  Empezar = buttons [22];
  MiLista1 = buttons [24];
  Pendientes1 = buttons [25];
  MiLista = buttons [26];
  Pendientes = buttons [27];
  VerTodo = buttons [28];
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
   imgButtons  = new ImageButton [1]; 
   imgButtons [0]= new ImageButton (getImagesButton(7,8), 820, 620, CheckX, CheckY);
  
}

void disableImageButton (){
  imgButtons[0].setEnabled(false);  
}

void enableImageButton(){
  imgButtons[0].setEnabled(true);  
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

void enableButtonsBiblioteca () {
  Move1.setEnabled(true);
  Move2.setEnabled(true);
  Move3.setEnabled(true);
  Move4.setEnabled(true);
  Move5.setEnabled(true);
  Move6.setEnabled(true);
  Move7.setEnabled(true);
  Move8.setEnabled(true);
}

void enableButtonsPerfil() {
  Leido.setEnabled(true);
  Comprar.setEnabled(true);
  Quiero.setEnabled(true);
  Empezar.setEnabled(true);
  Ver1.setEnabled(true);
  Ver2.setEnabled(true);
  Iniciar1.setEnabled(true);
  Iniciar2.setEnabled(true);
  Move9.setEnabled(true);
  Move10.setEnabled(true);
}

void enableButtonsAñadir() {
  MiLista1.setEnabled(true);
  Pendientes1.setEnabled(true);
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

void displayButtonsBiblioteca () {
  Move1.display2();
  Move2.display2();
  Move3.display2();
  Move4.display2();
  Move5.display2();
  Move6.display2();
  Move7.display2();
  Move8.display2();
}

void displayButtonsPerfil () {
  Move9.display2();
  Move10.display2();
  Leido.display3();
  Comprar.display3();
  Quiero.display3();
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
