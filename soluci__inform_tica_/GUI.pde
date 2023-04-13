
// Enumeracion de las pantallas de la app
enum PANTALLA {
  INICIO, BIBLIO, PERFIL, LEIDOS, ESTRETOS, ESTTOPS, NUEVOLEIDO, NUEVOCOMPRADO,
    COMPRAR, INFO, TOPS, RETOS, ACTIVOS, RETOSCON, INFOACTIVO, LIBRO};

// pantalla inicial
PANTALLA pantalla = PANTALLA.INICIO;

// creación de los diferentes compenentes

TextField TituloLeido, TituloComprar, TituloLista, TituloTops, AutorLeido, AutorComprar, AutorLista,
  EditorialLeido, EditorialComprar, EditorialLista, Buscar, Filtrar, Libro, TituloReto,
  ISBNLeido, ISBNComprar, ISBNLista;

TextArea Valoracion, LibrosTop;

Select s1, s2, s3, s9, s10, s14, s15;

Counter cRetos, cTops;

CalendariPlus cI, cF;

Carrousel es1, es2, es3, es4, es5;

TextField tf;

TimeField tif;

PopUp p;

CheckBoxStarList cblLeido;

SelectTextList tListAutor1Leido, tListAutor2Leido, tListEditorialLeido;

Libro l1;

Top top1;

Reto reto1; 

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
  "Elisabet Benavent", "Suma", "Novela", "Ranking",
  "Valoracion: Muy buen libro con un final inesperado"};

//Strings SelectTextList
String selectedCountry; 

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
  initLibro();
  initTextArea();
  initTop();
  initReto();
  initSelectedTextField();
}

//COMPONENTES

//SelectedTextField

void initSelectedTextField (){
  
  String a = "SELECT COUNT(*) AS total from Autor";
  msql.query(a);
  int numRows=0;
  if (msql.next()) {
    numRows = Integer.parseInt(msql.getString("total"));

  }
  String n = "SELECT Nombre from Autor";
  msql.query(n);
  String [] selectAutores= new String [numRows];
  int  r=0;
  while (msql.next()) {
    selectAutores[r] = msql.getString("Nombre");
    r++;
  }
  
  String e = "SELECT COUNT(*) AS total from Editorial";
  msql.query(e);
  int numFiles=0;
  if (msql.next()) {
    numFiles = Integer.parseInt(msql.getString("total"));

  }
  String s = "SELECT idEditorial from Editorial";
  msql.query(s);
  String [] selectValuesEditorial= new String [numFiles];
  int  t=0;
  while (msql.next()) {
    selectValuesEditorial[t] = msql.getString("idEditorial");
    t++;
  }

tListAutor1Leido = new SelectTextList(selectAutores, 70, 380, tListW, tListH);
tListAutor2Leido = new SelectTextList (selectAutores,400, 380, tListW, tListH);
tListEditorialLeido= new SelectTextList (selectValuesEditorial,1070, 300, tListW, tListH);


}

void displaySelectTextFieldLeido (){
tListAutor1Leido.display();
tListAutor2Leido.display();
tListEditorialLeido.display();

}

//cards libros

void initLibro () {
  l1 = new Libro (info1, bUnCuento);
  l1.setImage(this.imgs[24]);
}

void initTop(){
  String titulo = "Top 10 mejores novelas";
  String[] infoTop =  getInfoTaulaTop(titulo);
  top1 = new Top(titulo, infoTop);
}

void initReto(){
String titulo= "1 libro en 1 dia";
reto1 = new Reto(titulo);
reto1.setImage(this.imgs[1]);
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
  String[] titulosEs1 = new String[10];

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
  String q = "SELECT COUNT(*) AS total from Genero";
  msql.query(q);
  int total=0;
  if (msql.next()) {
    total = Integer.parseInt(msql.getString("total"));

  }
  String g = "SELECT idGenero from Genero";
  msql.query(g);
  String [] selectValues= new String [total];
  int  nr=0;
  while (msql.next()) {
    selectValues[nr] = msql.getString("idGenero");
    nr++;
  }
  
  String[] ValuesEstado = {"Leido","No Leido"};
  String[] ValuesAdquisicion = {"Comprado","Prestado"};
  s1 = new Select(selectValues, 800, 230, selectX, selectY);//Generos ALTA LIBRO
  s2 = new Select(selectValues, 1050, 550, selectX, selectY);//retos
  s3 = new Select(selectValues, 550, 350, selectX, selectY);//Leido
  s9 = new Select(ValuesEstado, 70,630, selectX, selectY);//Estado alta libro
  s10= new Select(ValuesAdquisicion, 400, 630, selectX, selectY);//Adquisicion alta libro
  s14= new Select(ValuesEstado, 300, 200, selectX, selectY);//Estado Comprado
  s15= new Select(ValuesAdquisicion, 500, 200, selectX, selectY);//Adquisicion Comprado
}


void enableSelectLeidos() {
  s1.setEnabled(true);
  s9.setEnabled(true);
  s10.setEnabled(true);  
}

void enableSelect2() {
  s2.setEnabled(true);
}



void enableSelectComprado() {
  s3.setEnabled(true);
  s14.setEnabled(true);
  s15.setEnabled(true);
  
}



void disableSelects() {
  s1.setEnabled(false);
  s2.setEnabled(false);
  s3.setEnabled(false);
  s9.setEnabled(false);
  s10.setEnabled(false);
  s14.setEnabled(false);
  s15.setEnabled(false);
}


// dibujar selects
void displaySelectLeido() {
  s1.display();
  s9.display();
  s10.display(); 
}

void displaySelect2() {
  s2.display();
}



void displaySelectsComprar() {
  s3.display();
  s14.display();
  s15.display();
}

// TextField
void initTextField() {
  TituloLeido = new TextField(70, 230, CampoX, CampoY);
  TituloComprar = new TextField(120, 330, CampoX, CampoY);
  TituloLista = new TextField(120, 330, CampoX, CampoY);
  AutorLista = new TextField(120, 380, CampoX, CampoY);
  EditorialLista = new TextField(120, 430, CampoX, CampoY);
  TituloTops = new TextField(150, 425, CampoX, CampoY);
  Buscar = new TextField(width/2-CampoX, 200, CampoX*2, CampoY);
  Filtrar = new TextField(width/2-CampoX+100, 200, CampoX*2, CampoY);
  ISBNLeido = new TextField(400, 230, CampoX, CampoY);
  ISBNComprar = new TextField(120, 480, CampoX, CampoY);
  TituloReto=  new TextField(120, 425, CampoX, CampoY);
  TituloLeido.setText("Titulo");
  TituloComprar.setText("Titulo");
  TituloLista.setText("Titulo");
  AutorLista.setText("autor");
  EditorialLista.setText("editorial");
  ISBNLeido.setText("ISBN");
  ISBNComprar.setText("ISBN");
  TituloTops.setText("Titulo");
  Buscar.setText("buscar...");
  Filtrar.setText("buscar...");
  TituloReto.setText("titulo");
}

void displayTextFieldLeido () {
  TituloLeido.display();
  ISBNLeido.display();
}

void displayTextFieldComprar () {
  TituloComprar.display();
  ISBNComprar.display();
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
  Valoracion = new TextArea (900, 450, ValoracionX, ValoracionY, 30, 6);
  LibrosTop = new TextArea (600, 400, ValoracionX, ValoracionY+50, 40, 10);
}

void displayTextArea() {
  Valoracion.display();
}


// botones

Button [] buttons;

Button Biblio, Biblio1, Perfil1, Perfil, Leido, Comprar, Quiero1, Quiero2, Pendientes, Pendientes1, MiLista1,
  MiLista, Empezar, Iniciar1, Iniciar2, Ver1, Ver2, AtrasP, AtrasB, AtrasR, Guardar, VerTodo, CalendarioI,
  CalendarioF, Aceptar, Leidos, Lista, ComprarB, Actuales, bUnCuento, ImagenComprado, EligeAutor1Leido, 
  EligeAutor2Leido, EligeEditorialLeido;

void initButtons () {
  buttons = new Button [23];
  buttons [0]= new Button ("Atrás", width-200, 50, LeidoX, LeidoY);
  buttons [1]= new Button ("BIBLIOTECA", width/3+225, height/2+100, bInX, bInY);
  buttons [2]= new Button ("Perfil", width/3, height/2+100, bInX, bInY);
  buttons [3]= new Button ("Biblioteca", 20, 10, bInX, bInY);
  buttons [4]= new Button ("Perfil", 280, 10, bInX, bInY);
  buttons [5]= new Button ("Iniciar", width-600, 450, LeidoX, LeidoY);
  buttons [6]= new Button ("Ver", width-350, 450, LeidoX, LeidoY);
  buttons [7]= new Button ("Iniciar", width-600, 700, LeidoX, LeidoY);
  buttons [8]= new Button ("Ver", width-350, 700, LeidoX, LeidoY);
  buttons [9]= new Button ("Alta Libro", 100, 250, LeidoX, LeidoY);
  buttons [10]= new Button ("Modificar", 300, 250, LeidoX, LeidoY);
  buttons [11]= new Button ("Ver Todo", 930, 750, LeidoX, LeidoY);
  buttons [12]= new Button ("Calendario", 420, 560, calendarioX, calendarioY);
  buttons [13]= new Button ("Leidos", 450, height/3+40, LeidoX, LeidoY);
  buttons [14]= new Button ("Comprar", 450, height/3+340, LeidoX, LeidoY);
  buttons [15]= new Button ("Atrás", width-200, 50, LeidoX, LeidoY);
  buttons [16]= new Button ("Atrás", width-200, 50, LeidoX, LeidoY);
  buttons [17]= new Button ("Calendario", 420, 630, calendarioX, calendarioY);
  buttons [18]= new Button ("x", 950, 500, libroWidth*1.5, libroHeight*1.5);
  buttons [19]= new Button ("Imagen",800, 700, LeidoX, LeidoY);
  buttons [20]= new Button ("Autor 1", 70+tListW/2-80, 300, LeidoX, LeidoY);
  buttons [21]= new Button ("Autor 2", 400+tListW/2-80, 300, LeidoX, LeidoY);
  buttons [22]= new Button ("Editorial", 1140, 230, LeidoX, LeidoY);
  
  

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
  VerTodo = buttons [11];
  CalendarioI = buttons [12];
  Leidos = buttons [13];
  ComprarB = buttons [14];
  AtrasB = buttons [15];
  AtrasR = buttons [16];
  CalendarioF = buttons [17];
  bUnCuento = buttons [18];
  ImagenComprado = buttons [19];
  EligeAutor1Leido = buttons [20];
  EligeAutor2Leido = buttons [21];
  EligeEditorialLeido = buttons [22];
  
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
  ComprarB.setEnabled(true);
}

void enableButtonsPerfil() {
  Leido.setEnabled(true);
  Comprar.setEnabled(true);
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
  ImagenComprado.setEnabled(true);
  EligeAutor1Leido.setEnabled(true);
  EligeAutor2Leido.setEnabled(true);
  EligeEditorialLeido.setEnabled(true);
}

void enableButtonsComprar(){
ImagenComprado.setEnabled(true);
}

void displayButtonsComprar () {
  ImagenComprado.display1();
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
  ComprarB.display1();
}

void displayButtonsPerfil () {
  Leido.display3();
  Comprar.display3();
  Iniciar1.display3();
  Ver1.display3();
  Iniciar2.display3();
  Ver2.display3();
}

void displayButtonsLeido(){
ImagenComprado.display1();
EligeAutor1Leido.display1();
EligeAutor2Leido.display1();
EligeEditorialLeido.display1();
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
  imgButtons  = new ImageButton [4];
  imgButtons [0]= new ImageButton (getImagesButton(11, 12),  1325, 730, CheckX, CheckY);//ALTA LIBRO
  imgButtons [1]= new ImageButton (getImagesButton(11, 12), 820, 620, CheckX, CheckY);//MODIFICAR
  imgButtons [2]= new ImageButton (getImagesButton(11, 12), 1225, 680, CheckX, CheckY);// tops
  imgButtons [3]= new ImageButton (getImagesButton(11, 12), 1225, 680, CheckX, CheckY);//retos
}

void disableImageButton () {
  imgButtons[0].setEnabled(false);
  imgButtons[1].setEnabled(false);
  imgButtons[2].setEnabled(false);
  imgButtons[3].setEnabled(false);
}

void enableImageButtonLeido() {
  imgButtons[0].setEnabled(true);
}

void enableImageButtonComprar() {
  imgButtons[1].setEnabled(true);
}

void enableImageButtonTop() { // ns si esta be
  imgButtons[2].setEnabled(true);
}

void enableImageButtonRetos() {
  imgButtons[3].setEnabled(true);
}
