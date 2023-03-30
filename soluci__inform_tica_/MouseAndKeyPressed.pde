void mousePressed() {
  if(pantalla ==PANTALLA.BIBLIO){
    
}
  
  
  if (Biblio.mouseOverButton() && Biblio.enabled) {
    pantalla = PANTALLA.BIBLIO;
    } else if (Perfil.mouseOverButton() && Perfil.enabled) {
    pantalla = PANTALLA.PERFIL;
    } else if (Perfil1.mouseOverButton() && Perfil1.enabled) {
    pantalla = PANTALLA.PERFIL;
    resetFields(); 
    } else if (Biblio1.mouseOverButton() && Biblio1.enabled) {
    pantalla = PANTALLA.BIBLIO;
    } else if (Leido.mouseOverButton() && Leido.enabled) {
    pantalla = PANTALLA.NUEVO1;
    resetFields();
    } else if (Empezar.mouseOverButton() && Empezar.enabled) {
    pantalla = PANTALLA.EMPEZAR;
    resetFields();
    } else if (Quiero1.mouseOverButton() && Quiero1.enabled) {
    pantalla = PANTALLA.NUEVO2;
    resetFields();
    } else if (Comprar.mouseOverButton() && Comprar.enabled) {
    pantalla = PANTALLA.NUEVO2;
    resetFields();
    } else if (Iniciar1.mouseOverButton() && Iniciar1.enabled) {
    pantalla = PANTALLA.ESTTOPS;
    resetFields();
    } else if (Iniciar2.mouseOverButton() && Iniciar2.enabled) {
    pantalla = PANTALLA.ESTRETOS;
    resetFields();
    } else if (Ver1.mouseOverButton() && Ver1.enabled) {
    pantalla = PANTALLA.TOPS;
    } else if (Ver2.mouseOverButton() && Ver2.enabled) {
    pantalla = PANTALLA.RETOS;
    } else if (AtrasP.mouseOverButton() && AtrasP.enabled) {
    pantalla = PANTALLA.PERFIL;
    } else if (AtrasB.mouseOverButton() && AtrasB.enabled) {
    pantalla = PANTALLA.BIBLIO;
    } else if (VerTodo.mouseOverButton() && VerTodo.enabled) {
    pantalla = PANTALLA.RETOSCON;
    } else if (Leidos.mouseOverButton() && Leidos.enabled) {
    pantalla = PANTALLA.LEIDOS;
    } else if (Lista.mouseOverButton() && Lista.enabled) {
    pantalla = PANTALLA.MILISTA;
    } else if (ComprarB.mouseOverButton() && ComprarB.enabled) {
    pantalla = PANTALLA.COMPRAR;
    } else if (Actuales.mouseOverButton() && Actuales.enabled) {
    pantalla = PANTALLA.ACTIVOS;
    } else if (AtrasR.mouseOverButton() && AtrasR.enabled) {
    pantalla = PANTALLA.RETOS;
    } else if (imgButtons[0].mouseOverButton()) {
     getFontAt(4);  
    p.setEnabled(true);
     // Coger los valores del campo del formulario 
     String valorTitulo= TituloComprar.getValue();//textField
     String valorAutor = AutorComprar.getValue();//textField
     String valorEditorial = EditorialComprar.getValue();//textField 
     String valorISBN = ISBNComprar.getValue();// textField
     String valorGenero   = s3.selectedValue; // select
    // Inserir en la BBDD
    //insertInfoTaulaLibro(valorTitulo, valorAutor,valorEditorial, valorISBN, valorGenero );
    } else if (p.Aceptar.mouseOverButton() && p.Aceptar.enabled) { 
    p.setEnabled(false);
      // Coger los valores del campo del formulario 
     String valorTiempo= tif.getValue();//textTimeField
     String valorGenero   = s2.selectedValue; // select
     String valorNumero = String.valueOf(cRetos.getValue());//counter
     String valorNom = TituloReto.getValue();//textField   
    // Inserir en la BBDD
    insertInfoTaulaReto(valorNom, valorNumero,valorTiempo, valorGenero);
     // Resetear campos del formulario
    // resetFormulari();
    } else if (imgButtons[1].mouseOverButton()) {
     getFontAt(4);  
    p.setEnabled(true);
    } else if (imgButtons[2].mouseOverButton()) {
     getFontAt(4);  
    p.setEnabled(true); 
  }
 

// activar el cambio de color al estar encima del textField 
  TituloLeido.isPressed();
  AutorLeido.isPressed();
  EditorialLeido.isPressed();
  TituloComprar.isPressed();
  AutorComprar.isPressed();
  EditorialComprar.isPressed();
  TituloLista.isPressed();
  AutorLista.isPressed();
  EditorialLista.isPressed();
  ISBNLeido.isPressed();
  ISBNComprar.isPressed();
  ISBNLista.isPressed();
  Valoracion.isPressed();
  TituloTops.isPressed();
  Buscar.isPressed();
  Filtrar.isPressed();
  TituloReto.isPressed();
  
// activar el cambio de color en el boton Check 
  //imgButtons[0].isPressed(); 
  
//CheckBoxStarList
cblLeido.checkMouse();

 
// actualizar el valor de los counters al pulsar + 0 -
   cRetos.update();
   cTops.update(); 

// escuchar los selects 
  if(s1.mouseOverSelect() && s1.enabled){
    if(!s1.collapsed){
      s1.update();      // Actualitzar valor
    }
    s1.toggle();        // Plegar o desplegar
  }

if(s2.mouseOverSelect() && s2.enabled){
    if(!s2.collapsed){
      s2.update();      // Actualitzar valor
    }
    s2.toggle();        // Plegar o desplegar
  }
  
  if(s3.mouseOverSelect() && s3.enabled){
    if(!s3.collapsed){
      s3.update();      // Actualitzar valor
    }
    s3.toggle();        // Plegar o desplegar
  }
  
  if(s4.mouseOverSelect() && s4.enabled){
    if(!s4.collapsed){
      s4.update();      // Actualitzar valor
    }
    s4.toggle();        // Plegar o desplegar
  }
  
   if(s5.mouseOverSelect() && s5.enabled){
    if(!s5.collapsed){
      s5.update();      // Actualitzar valor
    }
    s5.toggle();        // Plegar o desplegar
  }
  
// CALENDARIO
    // Comprobar si clicamos sobre el botón del Calendario
  c.checkButtons();
  
  // Si se pulsa el botón, cambia la visibilidad del calendario.
  if(Calendario.mouseOverButton()&&Calendario.enabled){
    c.visible = !c.visible;
  }
  
  if(c.bNext.mouseOverButton()){
    c.nextMonth();
  }
  
  if(c.bPrev.mouseOverButton()){
    c.prevMonth();
  }
  
  if(c.bOK.mouseOverButton() && c.dateSelected){
    dataCalendari = c.selectedDay +"/"+ c.selectedMonth + "/"+ c.selectedYear;
    c.visible = false;
  }
  // caroussels
  es1.checkButtons();es1.checkCursor();
  es2.checkButtons();es2.checkCursor();
  es3.checkButtons();es3.checkCursor();
  es4.checkButtons();es4.checkCursor();
  es5.checkButtons();es5.checkCursor();
  
  // timeField
   tif.isPressed();
   
   cblLeido.checkMouse();
   
 
}

// funcion para resetar los TextFields
void resetFields(){
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
  Valoracion.setText("valoración"); 
  Buscar.setText("buscar"); 
  Filtrar.setText("filtrar");
  TituloReto.setText("titulo");
}

// Reset del Formulari
void resetFormulari(){
  cRetos.resetValue();
  TituloReto.removeAllText();
  //tif.removeAllText(); 
  s4.removeAllText();
}

void keyPressed () {
  // escuchar las teclas del teclado en los textFields
  TituloLeido.keyPressed(key, (int)keyCode);
  AutorLeido.keyPressed(key, (int)keyCode);
  EditorialLeido.keyPressed(key, (int)keyCode);
  TituloComprar.keyPressed(key, (int)keyCode);
  AutorComprar.keyPressed(key, (int)keyCode);
  EditorialComprar.keyPressed(key, (int)keyCode);
  TituloLista.keyPressed(key, (int)keyCode);
  AutorLista.keyPressed(key, (int)keyCode);
  EditorialLista.keyPressed(key, (int)keyCode);
  Valoracion.keyPressed(key, (int)keyCode);
  TituloTops.keyPressed(key, (int)keyCode);
  Buscar.keyPressed(key, (int)keyCode);
  TituloReto.keyPressed(key, (int)keyCode);
  // escuchar las teclas del teclado en el TimeField
  tif.keyPressed(key, (int)keyCode);
  // 
  if (keyCode==LEFT){
    es1.prev();
  }
  else if(keyCode==RIGHT){
    es1.next();
  }
}
