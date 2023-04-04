
// Enumeracion de las pantallas de la app
enum PANTALLA {
  INICIO, BIBLIO, PERFIL, LEIDOS, ESTRETOS, ESTTOPS, NUEVOLEIDO, NUEVOCOMPRADO, NUEVOLISTA, MILISTA,
    COMPRAR, INFO, TOPS, RETOS, ACTIVOS, RETOSCON, INFOACTIVO, EMPEZAR, LIBRO
};

// pantalla inicial
PANTALLA pantalla = PANTALLA.INICIO;

// creación de los diferentes compenentes

TextField TituloLeido, TituloComprar, TituloLista, TituloTops, AutorLeido, AutorComprar, AutorLista,
  EditorialLeido, EditorialComprar, EditorialLista, Buscar, Filtrar, Libro, TituloReto,
  ISBNLeido, ISBNComprar, ISBNLista;

TextArea Valoracion, LibrosTop;

Select s1, s2, s3, s4, s5, s6;

Counter cRetos, cTops;

CalendariPlus cI, cF;

Carrousel es1, es2, es3, es4, es5;

TextField tf;

TimeField tif;

PopUp p;

CheckBoxStarList cblLeido;

PagRestantes Pg1, Pg2, Pg3, Pg4, Pg5, Pg6, Pg7;

Libro l1;

// Strings de algunos componentes

// texto del calendario
String dataCalendariInicio="";
String dataCalendariFin="";


// Textos del PopUp
String title = "Guardado";
String message = "Tu libro se ha guardado con èxito";

// Imatges de les opcions del checkboxstarlist
String[] stars = {"imgs/ON.png", "imgs/OFF.png"};

// datos del libro
String [] info1 = {"Un cuento perfecto",
  "Elisabet Benavent", "Planeta", "Novela", "Ranking",
  "Valoracion: jflkajdsklfjlksdjfkljsdlkfjksjfkadjlkfjlkdjflkjdlkfjklsd"};





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
  initLibro();
  initTextArea();
}

//COMPONENTES

//cards libros

void initLibro () {
  l1 = new Libro (info1, bUnCuento);
  l1.setImage(this.imgs[24]);
}



//PagRestantes

void initPagRestantes () {
  Pg1 = new PagRestantes(70, 400, 50, 20, 5);
  Pg2 = new PagRestantes(400, 400, 50, 20, 5);
  Pg3 = new PagRestantes(70, 550, 50, 20, 5);
  Pg4 = new PagRestantes(400, 550, 50, 20, 5);
  Pg5 = new PagRestantes(100, 750, 50, 20, 5);
  Pg6 = new PagRestantes(600, 750, 50, 20, 5);
  Pg7 = new PagRestantes(1100, 750, 50, 20, 5);
}

// checkboxstarlist
void initCheckStars () {
  cblLeido = new CheckBoxStarList(5, stars, 500, height/2, 45, 45);
  cblLeido.setCheckBoxStars(1);
}

// PopUP
void initPopUp () {
  p = new PopUp(title, message, width/2, height/2, popW, popH);
}

void enablePopUp() {
  p.setEnabled(true);
}

void disablePopUp() {
  p.setEnabled(false);
}

// TimeField

void initTimeField() {
  tif = new TimeField(150, 550, TimeFieldX, TimeFieldY);
}

void enableTimeField() {
  tif.setEnabled(true);
}

void disableTimeField() {
  tif.setEnabled(false);
}


// carrousel
void initCarrouselBiblio () {
  String[] titulosEs1 = new String[9];

  for (int i =0; i<titulosEs1.length; i++) {
    titulosEs1[i] = URL_IMGS+"/portada0"+i+".jpg";
  }
  es1 = new Carrousel(libroWidth+40, height/3-150, libroWidth+400-libroWidth+40, libroHeight, 4);
  es1.setImages(titulosEs1);
  es1.setButtons();

  es2 = new Carrousel(libroWidth+40, height/2, libroWidth+400-libroWidth+40, libroHeight, 4);
  es2.setImages(titulosEs1);
  es2.setButtons();

  es3 = new Carrousel(10.6*libroWidth+40, height/3, libroWidth+400-libroWidth+40, libroHeight, 4);
  es3.setImages(titulosEs1);
  es3.setButtons();

  es4 = new Carrousel(10.6*libroWidth+40, 2*height/3+20, libroWidth+400-libroWidth+40, libroHeight, 4);
  es4.setImages(titulosEs1);
  es4.setButtons();
}

void initCarrouselPerfil() {
  String[] trofeosEs5 = new String[7];

  for (int i =0; i<trofeosEs5.length; i++) {
    trofeosEs5[i] = URL_IMGS+"/trofeo"+i+".png";
  }

  es5 = new Carrousel(libroWidth+40, 490, trofeoX+400-trofeoX+40, trofeoY, 3);
  es5.setImages(trofeosEs5);
  es5.setButtons();
}


// calendario
void initCalendari () {
  cI = new CalendariPlus(50, 200, 700, 550);
  cF= new CalendariPlus(50, 250, 700, 550);
}

void enableCalendario() {
  cI.setEnabled(true);
  cF.setEnabled(true);
}

void disableCalendario() {
  cI.setEnabled(false);
  cF.setEnabled(false);
}

// counters

void initCounter() {
  cRetos = new Counter(getImgAt(13), getImgAt(14), 600, 550, selectX, selectY);
  cTops = new Counter(getImgAt(13), getImgAt(14), 150, 575, selectX, selectY);
}

void enableCounterRetos() {
  cRetos.setEnabled(true);
}

void enableCounterTops() {
  cTops.setEnabled(true);
}

void disableCounters() {
  cRetos.setEnabled(false);
  cTops.setEnabled(false);
}


// selects
void initSelect() {
  String[] selectValues = {"Narrativa", "Drama", "Poesia", "Teatro", "Clásicos", "Romance" };
  String[] selectValoraciones = {"1", "2", "3", "4", "5" };
  s1 = new Select(selectValues, 550, 350, selectX, selectY);//Leido
  s2 = new Select(selectValues, 1050, 550, selectX, selectY);//retos
  s3 = new Select(selectValues, 550, 350, selectX, selectY);//Comprado
  s4 = new Select(selectValues, 70, 500, selectX, selectY);//Filtrar generos Leidos
  s5 = new Select(selectValoraciones, 70, 350, selectX, selectY);//Filtrar valoraciones Leidos
  s6 = new Select(selectValues, 550, 350, selectX, selectY);//Lista
}

void enableSelect1() {
  s1.setEnabled(true);
}

void enableSelect2() {
  s2.setEnabled(true);
}

void enableSelect3() {
  s3.setEnabled(true);
}

void enableSelect4() {
  s4.setEnabled(true);
}

void enableSelect5() {
  s5.setEnabled(true);
}

void enableSelect6() {
  s6.setEnabled(true);
}


void disableSelects() {
  s1.setEnabled(false);
  s2.setEnabled(false);
  s3.setEnabled(false);
  s4.setEnabled(false);
  s5.setEnabled(false);
  s6.setEnabled(false);
}


// dibujar selects
void displaySelect1() {
  s1.display();
}

void displaySelect2() {
  s2.display();
}

void displaySelect3() {
  s3.display();
}

void displaySelect4() {
  s4.display();
}

void displaySelect5() {
  s5.display();
}

void displaySelect6() {
  s6.display();
}




// TextField
void initTextField() {
  TituloLeido = new TextField(120, 330, CampoX, CampoY);
  AutorLeido = new TextField(120, 380, CampoX, CampoY);
  EditorialLeido = new TextField(120, 430, CampoX, CampoY);
  TituloComprar = new TextField(120, 330, CampoX, CampoY);
  AutorComprar = new TextField(120, 380, CampoX, CampoY);
  EditorialComprar = new TextField(120, 430, CampoX, CampoY);
  TituloLista = new TextField(120, 330, CampoX, CampoY);
  AutorLista = new TextField(120, 380, CampoX, CampoY);
  EditorialLista = new TextField(120, 430, CampoX, CampoY);
  TituloTops = new TextField(150, 425, CampoX, CampoY);
  Buscar = new TextField(width/2-CampoX, 200, CampoX*2, CampoY);
  Filtrar = new TextField(width/2-CampoX+100, 200, CampoX*2, CampoY);
  ISBNLeido = new TextField(120, 480, CampoX, CampoY);
  ISBNComprar = new TextField(120, 480, CampoX, CampoY);
  ISBNLista = new TextField(120, 480, CampoX, CampoY);
  TituloReto=  new TextField(120, 425, CampoX, CampoY);
  TituloLeido.setText("título");
  AutorLeido.setText("autor");
  EditorialLeido.setText("editorial");
  TituloComprar.setText("título");
  AutorComprar.setText("autor");
  EditorialComprar.setText("editorial");
  TituloLista.setText("título");
  AutorLista.setText("autor");
  EditorialLista.setText("editorial");
  ISBNLeido.setText("ISBN");
  ISBNComprar.setText("ISBN");
  ISBNLista.setText("ISBN");
  TituloTops.setText("título");
  Buscar.setText("buscar...");
  Filtrar.setText("buscar...");
  TituloReto.setText("titulo");
}

void displayTextFieldLeido () {
  TituloLeido.display();
  AutorLeido.display();
  EditorialLeido.display();
  ISBNLeido.display();
  Valoracion.display();
}

void displayTextFieldComprar () {
  TituloComprar.display();
  AutorComprar.display();
  EditorialComprar.display();
  ISBNComprar.display();
}

void displayTextFieldLista () {
  TituloLista.display();
  AutorLista.display();
  EditorialLista.display();
  ISBNLista.display();
}

void displayTextFieldTops () {
  TituloTops.display();
  LibrosTop.display();
}

void displayTextFieldBuscar () {
  Buscar.display();
}

void displayTextFieldFiltrar () {
  Filtrar.display();
}

void displayTextFieldRetos() {
  TituloReto.display();
}

//TextArea
void initTextArea () {
  Valoracion = new TextArea (950, 450, ValoracionX, ValoracionY, 30, 6);
  LibrosTop = new TextArea (600, 400, ValoracionX, ValoracionY+50, 40, 10);
}

void displayTextArea() {
  Valoracion.display();
}


// botones

Button [] buttons;

Button Biblio, Biblio1, Perfil1, Perfil, Leido, Comprar, Quiero1, Quiero2, Pendientes, Pendientes1, MiLista1,
  MiLista, Empezar, Iniciar1, Iniciar2, Ver1, Ver2, AtrasP, AtrasB, AtrasR, Guardar, VerTodo, CalendarioI,
  CalendarioF, Aceptar, Leidos, Lista, ComprarB, Actuales, bUnCuento, ImagenComprado, ImagenLista, ImagenEmpezar;

void initButtons () {
  buttons = new Button [27];
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
  buttons [14]= new Button ("Ver Todo", 930, 750, LeidoX, LeidoY);
  buttons [15]= new Button ("Calendario", 420, 560, calendarioX, calendarioY);
  buttons [16]= new Button ("Leidos", 450, height/3+40, LeidoX, LeidoY);
  buttons [17]= new Button ("Mi Lista", width/2+120, height/3+190, LeidoX, LeidoY);
  buttons [18]= new Button ("Comprar", 450, height/3+340, LeidoX, LeidoY);
  buttons [19]= new Button ("Leyendo", width/2+120, height/3+510, LeidoX, LeidoY);
  buttons [20]= new Button ("Atrás", width-200, 50, LeidoX, LeidoY);
  buttons [21]= new Button ("Atrás", width-200, 50, LeidoX, LeidoY);
  buttons [22]= new Button ("Calendario", 420, 630, calendarioX, calendarioY);
  buttons [23]= new Button ("x", 950, 500, libroWidth*1.5, libroHeight*1.5);
  buttons [24]= new Button ("Imagen", 1100, 700, LeidoX, LeidoY);
  buttons [25]= new Button ("Imagen", 1100, 700, LeidoX, LeidoY);
  buttons [26]= new Button ("Imagen", 1100, 700, LeidoX, LeidoY);
  



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
  VerTodo = buttons [14];
  CalendarioI = buttons [15];
  Leidos = buttons [16];
  Lista = buttons [17];
  ComprarB = buttons [18];
  Actuales = buttons [19];
  AtrasB = buttons [20];
  AtrasR = buttons [21];
  CalendarioF = buttons [22];
  bUnCuento = buttons [23];
  ImagenComprado = buttons [24];
  ImagenLista = buttons [25];
  ImagenEmpezar = buttons [26];
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


void enableButtonCalendario() {
  CalendarioI.setEnabled(true);
  CalendarioF.setEnabled(true);
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

void enableButtonsLeidos() {
  bUnCuento.setEnabled(true);
}

void enableButtonsComprar(){
ImagenComprado.setEnabled(true);
}

void enableButtonsEmpezar(){
ImagenEmpezar.setEnabled(true);
}

void enableButtonsLista(){
ImagenLista.setEnabled(true);
}

void displayButtonsComprar () {
  ImagenComprado.display1();
}

void displayButtonsLista () {
  ImagenLista.display1();
}

void displayButtonsEmpezar () {
  ImagenEmpezar.display1();
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



void displayButtonsAtrasPerfil () {
  AtrasP.display1();
}

void displayButtonsAtrasBiblioteca () {
  AtrasB.display1();
}

void displayButtonsAtrasRetos () {
  AtrasR.display1();
}

void displayButtonVerTodo () {
  VerTodo.display1();
}

// botones con imagenes
ImageButton [] imgButtons;

ImageButton Check0, Check1;

PImage[] getImagesButton(int n1, int n2) {
  PImage[] imgsB0 = new PImage[2];
  imgsB0[0] = getImgAt(n1);
  imgsB0[1] = getImgAt(n2);
  return imgsB0;
}

void initImageButton () {
  imgButtons  = new ImageButton [6];
  imgButtons [0]= new ImageButton (getImagesButton(11, 12), 820, 620, CheckX, CheckY);//leido
  imgButtons [1]= new ImageButton (getImagesButton(11, 12), 820, 620, CheckX, CheckY);//Comprado
  imgButtons [2]= new ImageButton (getImagesButton(11, 12), 820, 620, CheckX, CheckY);//lista
  imgButtons [3]= new ImageButton (getImagesButton(11, 12), 820, 620, CheckX, CheckY);//empezar a leer
  imgButtons [4]= new ImageButton (getImagesButton(11, 12), 1225, 680, CheckX, CheckY);// tops
  imgButtons [5]= new ImageButton (getImagesButton(11, 12), 1225, 680, CheckX, CheckY);//retos
}

void disableImageButton () {
  imgButtons[0].setEnabled(false);
  imgButtons[1].setEnabled(false);
  imgButtons[2].setEnabled(false);
  imgButtons[3].setEnabled(false);
  imgButtons[4].setEnabled(false);
  imgButtons[5].setEnabled(false);
}

void enableImageButtonLeido() {
  imgButtons[0].setEnabled(true);
}

void enableImageButtonComprar() {
  imgButtons[1].setEnabled(true);
}

void enableImageButtonLista() {
  imgButtons[2].setEnabled(true);
}

void enableImageButtonEmpezar() {
  imgButtons[3].setEnabled(true);
}

void enableImageButtonTop() {
  imgButtons[4].setEnabled(true);
}

void enableImageButtonRetos() {
  imgButtons[5].setEnabled(true);
}
