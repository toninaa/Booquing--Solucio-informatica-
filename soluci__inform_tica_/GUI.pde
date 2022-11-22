
// funcion para inicializar todos los componentes GUI
void initTextField() {
  Titulo = new TextField(410, 340, CampoX, CampoY);
  Autor = new TextField(430, 390, CampoX, CampoY);
  Editorial = new TextField(470, 440, CampoX, CampoY);
}
// botones

Button [] buttons;

Button Biblio, Biblio1, Perfil1, Perfil, Move1, Move2, Move3, Move4, Move5, Move6, Move7, Move8, Move9, Move10, Check, Leido, Comprar, Quiero, Pendientes, MiLista, Empezar, Iniciar1, Iniciar2, Ver1, Ver2, Atras, Guardar, VerTodo;

void initButtons () {
  buttons = new Button [23];
  buttons [0]= new Button ("Atrás", width-200, 50, LeidoX, LeidoY);
  buttons [1]= new Button ("Biblioteca", width/3+225, height/2+100, bInX, bInY);
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
  buttons [22]=  new Button ("Empezar a leer", 150, 350, 3*LeidoX, LeidoY);


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
}
// función para desactivar los botones en las distintas pantallas
void disableButtons() {
  for (int i = 0; i>buttons.length; i++ ) {
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


void displayButtons () {
}
