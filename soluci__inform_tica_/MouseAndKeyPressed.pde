void mousePressed() {
  if (pantalla ==PANTALLA.BIBLIO) {
  }
  if (Biblio.mouseOverButton() && Biblio.enabled) {
    pantalla = PANTALLA.BIBLIO;
  } else if (Perfil.mouseOverButton() && Perfil.enabled) {
    pantalla = PANTALLA.PERFIL;
  } else if (PerfilX.mouseOverButton() && PerfilX.enabled) {
    pantalla = PANTALLA.PERFIL;
    resetFields();
  } else if (Biblio1.mouseOverButton() && Biblio1.enabled) {
    pantalla = PANTALLA.BIBLIO;
  } else if (Leido.mouseOverButton() && Leido.enabled) {
    pantalla = PANTALLA.NUEVOLEIDO;
    resetFields();
  } else if (Comprar.mouseOverButton() && Comprar.enabled) {
    pantalla = PANTALLA.NUEVOCOMPRADO;
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
  } else if (ComprarB.mouseOverButton() && ComprarB.enabled) {
    pantalla = PANTALLA.COMPRAR;
    getInfoLibrosBiblioteca("Leido");
  } else if (AtrasR.mouseOverButton() && AtrasR.enabled) {
    pantalla = PANTALLA.RETOS;
  } else if (imgButtons[0].mouseOverButton()&& imgButtons[0].enabled) {
    getFontAt(4);
    p.setEnabled(true);
    // Coger los valores del campo del formulario
    String valorTitulo= TituloLibro.getValue();//textField
    String autor1 = tListAutor1Leido.selectedValue; 
    String autor2 = tListAutor2Leido.selectedValue; 
    String valorEditorial = tListEditorialLeido.selectedValue;
    String valorISBN = ISBNlibro.getValue();// textField
    String valorGenero   = s1.getSelectedText(); // select
    String valorUbi= s9.getSelectedText();
    String valorImg = titulo;
    String valorAd= s10.getSelectedText(); 
    // Inserir en la BBDD
    insertInfoTaulaLibro(valorISBN, valorTitulo,valorUbi, valorEditorial, valorImg, valorGenero, valorAd);
    insertInfoTaulaLibro_has_Autor (valorISBN, autor1);
    insertInfoTaulaLibro_has_Autor(valorISBN, autor2);
  } else if (p.Aceptar.mouseOverButton() && p.Aceptar.enabled) {
    p.setEnabled(false);
    b.setEnabled(false);
  } else if (imgButtons[1].mouseOverButton()&& imgButtons[1].enabled) {
    getFontAt(4);
    p.setEnabled(true);
    // Coger los valores del campo del formulario
    String valorISBN = String.valueOf(ISBNmodificar.getValue());// textField
    String valorUbi= s14.getSelectedText();// select
    String valorRanking = String.valueOf(cblModificar.getNumSelected());//checkBoxStars
    String valorDiaInicio= String.valueOf(dataCalendariInicio);
    String valorDiaFin = String.valueOf(dataCalendariFin);
    String valorValoracion= Valoracion.getValue();
    String valorAd= s15.getSelectedText(); //select
    // Modificar en la BBDD
    updateInfoLibro(valorDiaInicio,valorDiaFin,valorRanking, valorValoracion,valorUbi,valorAd,valorISBN);  
  } else if (imgButtons[2].mouseOverButton () && imgButtons[2].enabled) {
    getFontAt(4);
    p.setEnabled(true);
     String valorNumero = String.valueOf(cTops.getValue());//counter
    String valorNom = TituloTops.getValue();//textField
    String valorLibros = LibrosTop.getValue(); // textArea
    // Inserir en la BBDD
    insertInfoTaulaTop(valorNom, valorNumero, valorLibros);
  } else if (imgButtons[3].mouseOverButton() && imgButtons[3].enabled) {
    getFontAt(4);
    p.setEnabled(true);
      // Coger los valores del campo del formulario
    String valorTiempo= tif.getValue();//textTimeField
    String valorGenero   = s2.selectedValue; // select
    String valorNumero = String.valueOf(cRetos.getValue());//counter
    String valorNom = TituloReto.getValue();//textField
    // Inserir en la BBDD
    insertInfoTaulaReto(valorNom, valorNumero, valorTiempo, valorGenero);
  }else if (ImagenComprado.mouseOverButton() && ImagenComprado.enabled) {
    fill(255);
    selectInput("Selecciona una imatge ...", "fileSelected");
  }else if (EligeAutor1Leido.mouseOverButton() && EligeAutor1Leido.enabled) {
    selectedValor = tListAutor1Leido.selectedValue + "("+tListAutor1Leido.selectedId+")";
   }else if (EligeAutor2Leido.mouseOverButton() && EligeAutor2Leido.enabled) {
    selectedValor = tListAutor2Leido.selectedValue + "("+tListAutor2Leido.selectedId+")";
   }else if (EligeEditorialLeido.mouseOverButton() && EligeEditorialLeido.enabled) {
    selectedValor = tListEditorialLeido.selectedValue + "("+tListEditorialLeido.selectedId+")";
   }else if (BuscarTops.mouseOverButton() && BuscarTops.enabled) {
    selectedValor =  ""+tListTops.selectedId+"";
    println(selectedValor);
    topX = new Top(selectedValor, getInfoTaulaTop(tListTops.selectedId));
    topX.setEnabled(true);    
   }else if (BuscarRetos.mouseOverButton() && BuscarRetos.enabled) {
    selectedValor =  tListRetos.selectedId;
    retoX= new Reto (selectedValor);
    retoX.setImage(this.imgs[1]);
   }else if (Borrar.mouseOverButton() && Borrar.enabled) { 
     pantalla = PANTALLA.BORRARLIBRO;
   }else if (BorrarP.mouseOverButton() && BorrarP.enabled) { 
     String valor = ISBNborrar.text;
     println(valor);
     deleteReto_has_Libro(valor);
     deleteTop_has_Libro(valor);
     deleteLibro_has_Autor(valor);
     deleteLibro(valor);
     // para el display del POP UP
     getFontAt(4);
     b.setEnabled(true);
   
   }else if (BuscarLeidos.mouseOverButton() && BuscarLeidos.enabled ) {
     selectedValor =  ""+tListLeidos.selectedId+"";
     lX= new Libro (getInfoLlibre(selectedValor));
     //println(lX.Img);
     //lX.setImage(lX.img);
   }else if (BuscarNoLeidos.mouseOverButton() && BuscarNoLeidos.enabled) {
    selectedValor =  ""+tListNoLeidos.selectedId+"";
     lX= new Libro (getInfoLlibre(selectedValor));
    
   }
 
  // activar el cambio de color al estar encima del textField
  TituloLibro.isPressed();
  ISBNlibro.isPressed();
  ISBNmodificar.isPressed();
  TituloTops.isPressed();
  Buscar.isPressed();
  Filtrar.isPressed();
  TituloReto.isPressed();
  ISBNborrar.isPressed();

  // activar el cambio de color al estar encima del textArea
  Valoracion.isPressed();
  LibrosTop.isPressed();


  //CheckBoxStarList
  cblModificar.checkMouse();
  
  //SelectedTextField
   tListAutor1Leido.mouseOn();
   tListAutor2Leido.mouseOn();
   tListEditorialLeido.mouseOn();
   tListTops.mouseOn();
   tListRetos.mouseOn();
   tListNoLeidos.mouseOn();
   tListLeidos.mouseOn();


  // actualizar el valor de los counters al pulsar + 0 -
  cRetos.update();
  cTops.update();

  // escuchar los selects
  if (s1.mouseOverSelect() && s1.enabled) {
    if (!s1.collapsed) {
      s1.update();      // Actualitzar valor
    }
    s1.toggle();        // Plegar o desplegar
  }

  if (s2.mouseOverSelect() && s2.enabled) {
    if (!s2.collapsed) {
      s2.update();      // Actualitzar valor
    }
    s2.toggle();        // Plegar o desplegar
  }
 
  
  if (s9.mouseOverSelect() && s9.enabled) {
    if (!s9.collapsed) {
      s9.update();      // Actualitzar valor
    }
    s9.toggle();        // Plegar o desplegar
  }
  
  if (s10.mouseOverSelect() && s10.enabled) {
    if (!s10.collapsed) {
      s10.update();      // Actualitzar valor
    }
    s10.toggle();        // Plegar o desplegar
  }
 
  
  if (s14.mouseOverSelect() && s14.enabled) {
    if (!s14.collapsed) {
      s14.update();      // Actualitzar valor
    }
    s14.toggle();        // Plegar o desplegar
  }
  
  if (s15.mouseOverSelect() && s15.enabled) {
    if (!s15.collapsed) {
      s15.update();      // Actualitzar valor
    }
    s15.toggle();        // Plegar o desplegar
  }

  // CALENDARIO
  // Comprobar si clicamos sobre el botón del Calendario
  cI.checkButtons();
  cF.checkButtons();

  // Si se pulsa el botón, cambia la visibilidad del calendario.
  if (CalendarioI.mouseOverButton()&&CalendarioI.enabled) {
    cI.visible = !cI.visible;
  }

  if (cI.bNext.mouseOverButton()) {
    cI.nextMonth();
  }

  if (cI.bPrev.mouseOverButton()) {
    cI.prevMonth();
  }

  if (cI.bOK.mouseOverButton() && cI.dateSelected) {
    cF.enabled= false;
    dataCalendariInicio = cI.selectedDay +"/"+ cI.selectedMonth + "/"+ cI.selectedYear;
    cI.visible = false;
  }
  // Si se pulsa el botón, cambia la visibilidad del calendario.
  if (CalendarioF.mouseOverButton()&&CalendarioF.enabled) {
    cF.visible = !cF.visible;
  }

  if (cF.bNext.mouseOverButton()) {
    cF.nextMonth();
  }

  if (cF.bPrev.mouseOverButton()) {
    cF.prevMonth();
  }

  if (cF.bOK.mouseOverButton() && cF.dateSelected) {
    cI.enabled= false;
    dataCalendariFin = cF.selectedDay +"/"+ cF.selectedMonth + "/"+ cF.selectedYear;
    cF.visible = false;
  }
  // caroussels
  es1.checkButtons();
  es1.checkCursor();
  es2.checkButtons();
  es2.checkCursor();
  es5.checkButtons();
  es5.checkCursor();

  // timeField
  tif.isPressed();
  cblModificar.checkMouse();
}

// funcion para resetar los TextFields y el textArea
void resetFields() {
  TituloLibro.setText("Titulo");
  ISBNlibro.setText("ISBN");
  TituloTops.setText("Titulo");
  Buscar.setText("buscar");
  Filtrar.setText("filtrar");
  TituloReto.setText("titulo");
  ISBNborrar.setText("ISBN");
}



void keyPressed () {
  // escuchar las teclas del teclado en los textFields
  TituloLibro.keyPressed(key, (int)keyCode);
  TituloTops.keyPressed(key, (int)keyCode);
  Buscar.keyPressed(key, (int)keyCode);
  TituloReto.keyPressed(key, (int)keyCode);
  ISBNlibro.keyPressed(key, (int)keyCode);
  ISBNmodificar.keyPressed(key, (int)keyCode);
  ISBNborrar.keyPressed(key,(int)keyCode);
  
  //SelectedTextField
   tListAutor1Leido.keyOn();
   tListAutor2Leido.keyOn();
   tListEditorialLeido.keyOn();
   tListTops.keyOn();
   tListRetos.keyOn();
   tListNoLeidos.keyOn();
   tListLeidos.keyOn();

  // escuchar las teclas del teclado para el TextArea
  Valoracion.keyPressed(key, (int)keyCode);
  LibrosTop.keyPressed(key, (int)keyCode);
  // escuchar las teclas del teclado en el TimeField
  tif.keyPressed(key, (int)keyCode);
  //
  if (keyCode==LEFT) {
    es1.prev();
  } else if (keyCode==RIGHT) {
    es1.next();
  }
}
