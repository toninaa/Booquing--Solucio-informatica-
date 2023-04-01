import java.util.Calendar;

class CalendariPlus {

  // Textos representativos de los meses
  String[] months = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", 
    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};

  // Información del calendario
  int any, mes, dia;
  int numDaysMonth, numDaysPrevMonth;
  int dayOfWeek, firstDay;
  
  // variable para activar y desactivar 
  boolean enabled;

  // Fecha seleccionada
  boolean dateSelected = false;
  int selectedDay=0, selectedMonth=0, selectedYear=0;

  // Calendario actual, y del mes anterior
  Calendar cal, cPrev;

  // Botones del calendario
  DayButton[] buttons;
  Button bNext, bPrev, bOK;

  // Dimensiones del calendario
  int x, y, w, h;

  // Visibilidad del calendario
  boolean visible = false;


  // Constructor
  CalendariPlus(int x, int y, int w, int h) {
   

    this.buttons = new DayButton[37];

    this.cal = Calendar.getInstance();
    cal.set(Calendar.DAY_OF_MONTH, 1);

    this.any = cal.get(Calendar.YEAR);
    this.mes = cal.get(Calendar.MONTH) + 1;
    this.dia = cal.get(Calendar.DATE);

    this.numDaysMonth = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

    this.dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
    if (dayOfWeek==Calendar.SUNDAY) { 
      this.dayOfWeek = 6;
    } else { 
      this.dayOfWeek  = this.dayOfWeek - 2;
    }

    cal.set(Calendar.DAY_OF_WEEK, cal.getFirstDayOfWeek());
    this.firstDay = cal.get(Calendar.DATE);

    cPrev = Calendar.getInstance();
    setPrevCalendar(1, this.mes-2, this.any);

    this.numDaysPrevMonth = cPrev.getActualMaximum(Calendar.DAY_OF_MONTH);

    this.x = x; 
    this.y = y; 
    this.w = w; 
    this.h = h;
    createCalendar(x, y, w, h);
    
    bNext = new Button(">", x+w/3+130, y -70, 50, 50);
    bPrev = new Button("<", x+ w/3+70, y - 70, 50, 50);
    bOK   = new Button("OK", x+w/3+200, y - 70, 50, 50);
  }

  // Setters

  void setCalendar(int d, int m, int y) {
    cal.set(Calendar.YEAR, y);
    cal.set(Calendar.MONTH, m);
    cal.set(Calendar.DATE, d);
  }

  void setPrevCalendar(int d, int m, int y) {
    cPrev.set(Calendar.YEAR, y);
    cPrev.set(Calendar.MONTH, m);
    cPrev.set(Calendar.DATE, d);
  }

  void setSelectedDate(int d, int m, int y) {
    this.selectedYear = y;
    this.selectedMonth = m;
    this.selectedDay = d;
     
  }
  
  
 
  // Ir un mes atrás en el Calendario
  void prevMonth() {

    this.buttons = new DayButton[37];

    this.mes --;
    if (this.mes==0) {
      this.mes = 12;
      this.any--;
    }
    setCalendar(this.dia, this.mes -1, this.any);

    this.numDaysMonth = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

    this.dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
    if (dayOfWeek==Calendar.SUNDAY) { 
      this.dayOfWeek = 6;
    } else { 
      this.dayOfWeek  = this.dayOfWeek - 2;
    }

    cal.set(Calendar.DAY_OF_WEEK, cal.getFirstDayOfWeek());
    this.firstDay = cal.get(Calendar.DATE);

    setPrevCalendar(1, this.mes -2, this.any);
    this.numDaysPrevMonth = cPrev.getActualMaximum(Calendar.DAY_OF_MONTH);

    createCalendar(x, y, w, h);
  }

  void createCalendar(int x, int y, int w, int h) {

    float dayWidth  = w / 7;
    float dayHeight = h / 6;
    int numDia = 1;
    int f = 0, nb = 0;

    while (numDia<=numDaysMonth) {

      if (firstDay!=1 && f==0) {
        int cPrev=0;
        for (int p=firstDay, c=0; p<=numDaysPrevMonth; p++, c++) {
          buttons[nb] = new DayButton(x + c*dayWidth, y + f*dayHeight, dayWidth, dayHeight, p, mes, any);
          buttons[nb].setEnabled(false);
          cPrev++; 
          nb++;
        }
        for (int c=cPrev; c<7; c++) {
          buttons[nb] = new DayButton(x + c*dayWidth, y + f*dayHeight, dayWidth, dayHeight, numDia, mes, any);
          numDia++; 
          nb++;
        }
        f++;
      } else {
        for (int c=0; c<7; c++) {
          buttons[nb] = new DayButton(x + c*dayWidth, y + f*dayHeight, dayWidth, dayHeight, numDia, mes, any);
          numDia++; 
          nb++;
          if (numDia>numDaysMonth) { 
            break;
          }
        }
        f++;
      }
    }
  }

  // Ir un mes hacia adelante en el calendario
  void nextMonth() {

    this.buttons = new DayButton[37];

    this.mes ++;
    if (this.mes==13) {
      this.mes = 1;
      this.any++;
    }
    setCalendar(this.dia, this.mes-1, this.any);

    this.numDaysMonth = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

    this.dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
    if (dayOfWeek==Calendar.SUNDAY) { 
      this.dayOfWeek = 6;
    } else { 
      this.dayOfWeek  = this.dayOfWeek - 2;
    }

    cal.set(Calendar.DAY_OF_WEEK, cal.getFirstDayOfWeek());
    this.firstDay = cal.get(Calendar.DATE);

    setPrevCalendar(1, this.mes-2, this.any);

    this.numDaysPrevMonth = cPrev.getActualMaximum(Calendar.DAY_OF_MONTH);

    createCalendar(x, y, w, h);
  }



  // Dibujar el Calendario
  void display() {
    if (visible) {
      pushStyle();
      
      fill(255); noStroke();
      rect(x, y-80, w, h);
      
      fill(0); 
      textSize(36); 
      textAlign(LEFT);
      text(months[mes-1]+"-"+any, x, y - 30);
      for (DayButton b : buttons) {
        if (b!=null) {
          b.display();
        }
      }

      if (dateSelected) {
        String dateText = this.selectedYear+"-"+this.selectedMonth+"-"+this.selectedDay;
        fill(0); 
        textSize(24); 
        textAlign(RIGHT);
        text(dateText, x+w, y - 30);
      }
      
      // Dibujar los botones
      bNext.display1();
      bPrev.display1();
      bOK.display1();
      popStyle();
    }
    
    
  }


  // Comprovar si pulsamos sobre los botones del Calendario
  void checkButtons() {
    for (DayButton b : buttons) {
      if ((b!=null)&&(b.enabled)&&(b.mouseOver())) {
        boolean prevState = b.selected;
        deselectAll();
        b.setSelected(!prevState);
        if (b.selected) {
          dateSelected = true;
          setSelectedDate(b.any, b.mes, b.dia);
        } else {
          dateSelected = false;
        }
      }
    }
  }

  // Deseleccionar todos los botones del Calendario
  void deselectAll() {
    for (DayButton b : buttons) {
      if (b!=null) {
        b.setSelected(false);
      }
    }
  }
 // función para activar o desactivar el calendario 
 void setEnabled(boolean b){
   this.enabled = b;
 }
 
}
