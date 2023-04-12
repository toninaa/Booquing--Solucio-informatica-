void mousePressed() {
  if (pantalla ==PANTALLA.BIBLIO) {
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
  } else if (AtrasR.mouseOverButton() && AtrasR.enabled) {
    pantalla = PANTALLA.RETOS;
  } else if (imgButtons[0].mouseOverButton()&& imgButtons[0].enabled) {
    getFontAt(4);
    p.setEnabled(true);
    // Coger los valores del campo del formulario
    String valorTitulo= TituloLeido.getValue();//textField
    String autor1 = s5.getSelectedText(); 
    String autor2 = s7.getSelectedText(); 
    String valorEditorial = s8.getSelectedText();
    String valorISBN = ISBNLeido.getValue();// textField
    String valorGenero   = s1.getSelectedText(); // select
    String valorRanking = String.valueOf(cblLeido.getNumSelected());//checkBoxStars
    String valorDiaInicio= String.valueOf(dataCalendariInicio);
    String valorDiaFin = String.valueOf(dataCalendariFin);
    String valorValoracion= Valoracion.getValue();
    String valorUbi= s9.getSelectedText();
    String valorImg = titulo;
    String valorAd= s10.getSelectedText(); 
    // Inserir en la BBDD
    insertInfoTaulaLibro(valorISBN, valorTitulo, valorDiaInicio, valorDiaFin, valorRanking, valorValoracion, valorUbi, valorEditorial, valorImg, valorGenero, valorAd);
    insertInfoTaulaLibro_has_Autor (valorISBN, autor1);
    insertInfoTaulaLibro_has_Autor(valorISBN, autor2);
  } else if (p.Aceptar.mouseOverButton() && p.Aceptar.enabled) {
    p.setEnabled(false);
  } else if (imgButtons[1].mouseOverButton()&& imgButtons[1].enabled) {
    getFontAt(4);
    p.setEnabled(true);
    // Coger los valores del campo del formulario
    String valorTitulo= TituloComprar.getValue();//textField
    String autor1 = s11.getSelectedText();//select
    String autor2 = s12.getSelectedText();//select
    String valorEditorial = s13.getSelectedText();//select
    String valorISBN = String.valueOf(ISBNComprar.getValue());// textField
    String valorGenero   = s3.getSelectedText(); // select
    String valorUbi= s14.getSelectedText();// select
    String valorImg = titulo;
    String valorAd= s15.getSelectedText(); //select
    // Inserir en la BBDD
    insertInfoTaulaLibro(valorISBN, valorTitulo, valorUbi, valorEditorial, valorImg, valorGenero, valorAd );
    insertInfoTaulaLibro_has_Autor (valorISBN, autor1);
    insertInfoTaulaLibro_has_Autor(valorISBN, autor2);
  } else if (imgButtons[2].mouseOverButton () && imgButtons[2].enabled) {
    getFontAt(4);
    p.setEnabled(true);
    // Coger los valores del campo del formulario
    String valorTitulo= TituloLista.getValue();//textField
    String valorAutor = AutorLista.getValue();//textField
    String valorEditorial = EditorialLista.getValue();//textField
    String valorISBN = ISBNLista.getValue();// textField
    String valorGenero   = s6.getSelectedText(); // select
    String valorUbi= "Lista";
    String valorImg = titulo;
    String valorAd= ""; 
    // Inserir en la BBDD
    insertInfoTaulaLibro(valorISBN, valorTitulo, valorUbi, valorEditorial, valorImg, valorGenero, valorAd);
  } else if (imgButtons[3].mouseOverButton() && imgButtons[3].enabled) {
    getFontAt(4);
    p.setEnabled(true);
  } else if (imgButtons[5].mouseOverButton()  && imgButtons[5].enabled) {
    getFontAt(4);
    p.setEnabled(true);
    // Coger los valores del campo del formulario
    String valorTiempo= tif.getValue();//textTimeField
    String valorGenero   = s2.selectedValue; // select
    String valorNumero = String.valueOf(cRetos.getValue());//counter
    String valorNom = TituloReto.getValue();//textField
    // Inserir en la BBDD
    insertInfoTaulaReto(valorNom, valorNumero, valorTiempo, valorGenero);
  } else if (imgButtons[4].mouseOverButton() && imgButtons[4].enabled) {
    getFontAt(4);
    p.setEnabled(true);
    String valorNumero = String.valueOf(cTops.getValue());//counter
    String valorNom = TituloTops.getValue();//textField
    String valorLibros = LibrosTop.getValue(); // textArea
    // Inserir en la BBDD
    insertInfoTaulaTop(valorNom, valorNumero, valorLibros);
  } else if (bUnCuento.mouseOverButton() && bUnCuento.enabled) {
    pantalla = PANTALLA.LIBRO;
  }else if (ImagenComprado.mouseOverButton() && ImagenComprado.enabled) {
    selectInput("Selecciona una imatge ...", "fileSelected");
  }
  else if (ImagenLista.mouseOverButton() && ImagenLista.enabled) {
    selectInput("Selecciona una imatge ...", "fileSelected");
  }
  else if (ImagenEmpezar.mouseOverButton() && ImagenEmpezar.enabled) {
    selectInput("Selecciona una imatge ...", "fileSelected");
  }

  // activar el cambio de color al estar encima del textField
  TituloLeido.isPressed();
  TituloComprar.isPressed();
  ISBNLeido.isPressed();
  ISBNComprar.isPressed();
  TituloTops.isPressed();
  Buscar.isPressed();
  Filtrar.isPressed();
  TituloReto.isPressed();

  // activar el cambio de color al estar encima del textArea
  Valoracion.isPressed();
  LibrosTop.isPressed();


  //CheckBoxStarList
  cblLeido.checkMouse();


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
  
  if (s3.mouseOverSelect() && s3.enabled) {
    if (!s3.collapsed) {
      s3.update();      // Actualitzar valor
    }
    s3.toggle();        // Plegar o desplegar
  }

  if (s5.mouseOverSelect() && s5.enabled) {
    if (!s5.collapsed) {
      s5.update();      // Actualitzar valor
    }
    s5.toggle();        // Plegar o desplegar
  }

  
  if (s7.mouseOverSelect() && s7.enabled) {
    if (!s7.collapsed) {
      s7.update();      // Actualitzar valor
    }
    s7.toggle();        // Plegar o desplegar
  }
  
  if (s8.mouseOverSelect() && s8.enabled) {
    if (!s8.collapsed) {
      s8.update();      // Actualitzar valor
    }
    s8.toggle();        // Plegar o desplegar
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
  
  if (s11.mouseOverSelect() && s11.enabled) {
    if (!s11.collapsed) {
      s11.update();      // Actualitzar valor
    }
    s11.toggle();        // Plegar o desplegar
  }
  
  if (s12.mouseOverSelect() && s12.enabled) {
    if (!s12.collapsed) {
      s12.update();      // Actualitzar valor
    }
    s12.toggle();        // Plegar o desplegar
  }
  
  if (s13.mouseOverSelect() && s13.enabled) {
    if (!s13.collapsed) {
      s13.update();      // Actualitzar valor
    }
    s13.toggle();        // Plegar o desplegar
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
  es3.checkButtons();
  es3.checkCursor();
  es4.checkButtons();
  es4.checkCursor();
  es5.checkButtons();
  es5.checkCursor();

  // timeField
  tif.isPressed();
  cblLeido.checkMouse();
}

// funcion para resetar los TextFields y el textArea
void resetFields() {
  TituloLeido.setText("Titulo");
  TituloComprar.setText("Titulo");
  ISBNLeido.setText("ISBN");
  ISBNComprar.setText("ISBN");
  TituloTops.setText("Titulo");
  Buscar.setText("buscar");
  Filtrar.setText("filtrar");
  TituloReto.setText("titulo");
}



void keyPressed () {
  // escuchar las teclas del teclado en los textFields
  TituloLeido.keyPressed(key, (int)keyCode);
  TituloComprar.keyPressed(key, (int)keyCode);
  TituloTops.keyPressed(key, (int)keyCode);
  Buscar.keyPressed(key, (int)keyCode);
  TituloReto.keyPressed(key, (int)keyCode);
  ISBNLeido.keyPressed(key, (int)keyCode);
  ISBNComprar.keyPressed(key, (int)keyCode);

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
